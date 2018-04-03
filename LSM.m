function [parameters,rmse]=LSM(match1,match2)
% This function gets the transformation parameters based on two sets of
% matches using the least square method
match1_xy=match1(:,[1 2]);
match2_xy=match2(:,[1 2]);%generate the initial point set randomly
A=[];                                              % Ax=b;
for i=1:size(match1_xy,1)
    A=[A;repmat(match1_xy(i,:),2,2)];
end
B=[1 1 0 0;0 0 1 1];B=repmat(B,size(match1_xy,1),1);
A=A.*B;
B=[1 0;0 1];B=repmat(B,size(match1_xy,1),1);
A=[A B];
t_match2_xy=match2_xy';b=t_match2_xy(:);
[Q,R]=qr(A);
parameters=R\(Q'*b);
%parameters=A\b;
N=size(match1,1);
match1_test=match1(:,[1 2]);match2_test=match2(:,[1 2]);
M=[parameters(1) parameters(2);parameters(3) parameters(4)];
match1_test_trans=M*match1_test'+repmat([parameters(5);parameters(6)],1,N);
match1_test_trans=match1_test_trans';
test=match1_test_trans-match2_test;
rmse=sqrt(sum(sum(test.^2))/N);