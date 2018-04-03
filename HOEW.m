function ew = HOEW(coordinate1,coordinate2,coordinate3)

coordinatei = coordinate1';
coordinatej = coordinate2';
coordinatek = coordinate3';

            data_temp1 = [coordinatei coordinatej];
            data_temp2 = coordinatek*ones(1,2);
            data_temp3 = data_temp1-data_temp2;
            valH_All = abs(det(data_temp3)); %det « ≤√¥£ø£ø£ø
            temp = prod(sqrt(sum(([coordinatei coordinatej] - [coordinatek coordinatek]).^2)));
            fenmu = 1/temp;
%             temp = prod(sqrt(sum(([coordinatek coordinatej] - [coordinatei coordinatei]).^2)));
%--------------------------------------------------------------------------%
            t=([coordinatek coordinatej] - [coordinatei coordinatei]).^2;
            t1=sum(t);
            t2=sqrt(t1);
            temp = prod(t2);
%--------------------------------------------------------------------------%
            fenmu = fenmu + 1/temp;
            temp = prod(sqrt(sum(([coordinatei coordinatek] - [coordinatej coordinatej]).^2)));
            fenmu = fenmu + 1/temp;
% If A is a vector, prod(A) returns the product of the elements.
% If A is a matrix, prod(A) treats the columns of A as vectors, returning a row vector of the products of each column. 
           ew =(valH_All*fenmu);

