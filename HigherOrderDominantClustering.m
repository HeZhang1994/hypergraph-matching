function x = HigherOrderDominantClustering(H,w,Nv,MaxIter)

Ne = size(H,1);
x = ones(Nv,1)/Nv;
NIter = 0;
while NIter<MaxIter
    Fx = zeros(Nv,1);
    for i = 1:Ne
        edge = H(i,:);
        tmp = prod(x(edge))*w(i);
        if tmp>0
            Fx(edge) = Fx(edge)+tmp./x(edge);
        end
    end
    x = x.*Fx;
    xFx = sum(x);
    if xFx == 0
        return;
    end
    x = x/xFx;
    NIter = NIter+1;
end