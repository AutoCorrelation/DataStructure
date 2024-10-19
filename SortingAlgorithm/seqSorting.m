function [Y] = seqSorting(X,N)
   for i = 1:N
       for j = i+1:N
           if(X(i)-X(j)>0)
               temp = X(i);
               X(i) = X(j);
               X(j) = temp;
           end
       end
   end
   Y=X;
end