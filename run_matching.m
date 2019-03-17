clear all
close all
clc

%% Set parameters.
% Parameter for extracting SIFT key points.
distRatio = 0.55;

% Parameters for resizing input images.
imreszierate1 = 0.5;
imreszierate2 = 0.4;

% Parameters for refining matching results.
sigma3 = 0.005; % The scale controlling parameter in Eq.(3).
thr=0.0001;
MaxIter = 100;


%% Load and pre-process two multi-source images
% Set the path of images.
image1='images\books\book_nir.png';
image2='images\books\book_rgb.png';

% Read images.
im1 = imread(image1);
im2 = imread(image2);

% Resize images.
% Rotations can also be involved here.
im1 = imresize(im1,imreszierate1);
im2 = imresize(im2,imreszierate2);


%% Extract SIFT key points.
[im1,des1, loc1] = sift(im1);
[im2,des2, loc2] = sift(im2);


%% Raw matching.
des2t = des2';
for i = 1 : size(des1,1)
    dotprods = des1(i,:) * des2t;  
    [vals,indx] = sort(acos(dotprods));
    if (vals(1) < distRatio * vals(2))
        match(i) = indx(1);
    else
        match(i) = 0;
    end
end

num = sum(match > 0);

% Transfer image coordinate to the Cartesian coordinate.
[~,point1,point2]=find(match);
coordinate1=loc1(point1,[2 1]);coordinate2=loc2(point2,[2 1]);
cor1=[coordinate1 point2'];cor2=[coordinate2 point2'];

% Remove SIFT key points at the same location - One-to-one matching.
uni1=cor1(:,[1 2]);uni2=cor2(:,[1 2]);
[~,i,~]=unique(uni1,'rows','first');
cor1=cor1(sort(i)',:);cor2=cor2(sort(i)',:);

% Display matching results.
appendimages(im1,im2,cor1,cor2);


%% MI Matching.
[cor1,cor2]=outlier(cor1,cor2);
[car_solution,~]=LSM(cor1,cor2);

solution=[car_solution(4) car_solution(3) car_solution(2) car_solution(1) car_solution(6) car_solution(5)];

% Display matching results.
appendimages(im1,im2,cor1,cor2);


%% Hyper-graph matching.
Nv =size(coordinate1,1);
valCT = zeros(Nv,1);
indCT = zeros(Nv,3);

l = 0;
for i = 1:Nv-1
    for j = i+1:Nv
        for k = i+j:Nv
            l = l + 1;
            indCT(l,:) = [i j k];
            e1 = HOEW(coordinate1(i,:),coordinate1(j,:),coordinate1(k,:));
            e2 = HOEW(coordinate2(i,:),coordinate2(j,:),coordinate2(k,:));
            valCT(l) = exp(-((e1-e2)^2)/sigma3);
        end
    end
end

x = HigherOrderDominantClustering(indCT,valCT,Nv,MaxIter);

% Display matching results.
appendimages(im1,im2,coordinate1(x>thr,:),coordinate2(x>thr,:));
