function[Y] = bubbleSort(X,N)
    for i=N-1:-1:1
        for j=1:i
            if X(j)>X(j+1)
                temp = X(j);
                X(j) = X(j+1);
                X(j+1) = temp;
            end
        end
    end
    Y=X;
end