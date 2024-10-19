function findPrimes(numParam1, numParam2)
    if nargin==0 % narg in narg out https://agiantmind.tistory.com/109
        numParam1=1;
        numParam2=10;
    end
    numCount = 1;
    for iter = numParam1:numParam2
        if isPrimeNumber(iter) == true
            fprintf('%d th prime : %d \n',numCount,iter)
            numCount = numCount + 1;
        end
    end

    function out = isPrimeNumber(in)
        out = true;
        for inIter = 2:in-1
            if mod(in, inIter) == 0
                out = false;
                break
            end
        end
    end
end