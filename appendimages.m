% im = appendimages(image1, image2)
%
% Return a new image that appends the two images side-by-side. %append£ºÁ¬½Ó

function  appendimages(image1, image2,correspond1,correspond2)

% Select the image with the fewest rows and fill in enough empty rows
%   to make it the same height as the other image.


[M1,N1,T1] = size(image1);
[M2,N2,T2] = size(image2);

imblank_c = ceil(min(N1,N2)/4);

imblank=255*ones(max(M1,M2),imblank_c,max(T1,T2));

if M1>=M2
    im_temp = 255*ones(M1,N2,T2);
    im_temp(1:M2,:,:) = image2;
    image2 = im_temp;
else
    im_temp = 255*ones(M2,N1,T1);
    im_temp(1:M1,:,:) = image1;
    image1 = im_temp;
end


[M1,N1,T1] = size(image1);
[M2,N2,T2] = size(image2);

if T1>T2
    im_temp = image2;
    image2 = zeros(M2,N2,T1);
    for i = 1:T1
        image2(:,:,i) = im_temp;
    end
elseif T1<T2
    im_temp = image1;
    
    image1 = zeros(M1,N1,T2);
    for i = 1:T2

        image1(:,:,i) = im_temp;
    end
end

im3 = uint8([image1 imblank image2]);

figure;
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);
colormap('gray');
imagesc(im3);
axis off;
hold on;



cols1 = size(image1,2)+size(imblank,2);



% for i = 1: size(correspond1,1)
%     if (abs(correspond1(i,2)-correspond2(i,2)) > 95.38 )
%         line([correspond1(i,1) correspond2(i,1)+cols1], ...
%             [correspond1(i,2) correspond2(i,2)], 'Color', 'r','linewidth',2.3);
%     else
%         line([correspond1(i,1) correspond2(i,1)+cols1], ...
%             [correspond1(i,2) correspond2(i,2)], 'Color', 'c','linewidth',2.3);
%     end
% end



for i = 1: size(correspond1,1)
        line([correspond1(i,1) correspond2(i,1)+cols1], ...
            [correspond1(i,2) correspond2(i,2)], 'Color', 'c','linewidth',2.3);
end


cor1_x=correspond1(:,1);cor1_y=correspond1(:,2);
scatter(cor1_x,cor1_y,'b','filled');hold on;

cor2_x=correspond2(:,1);cor2_y=correspond2(:,2);
scatter(cor2_x+cols1,cor2_y,'b','filled');hold on;