function x = DominantSet(A,MaxIter,x)


Nv = size(A,2);

if (nargin < 3 )
    x = ones(Nv,1)/Nv;
end


for i = 1:MaxIter
    Ax = A*x;
    xAx = x'*Ax;
    x = x.*Ax/xAx;
end