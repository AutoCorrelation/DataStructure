function[] = getPrimeNumber(n)

isPrime = ones(1, n);         % if isPrime(i) is 1, it's prime number
for i = 2:sqrt(n)
    if isPrime(i) == 1        % if i is primeNum
        for j = i*i:i:n       % get rid of i's muliple
            isPrime(j) = 0;
        end
    end
end
while n > 1
    for i = 2:n
        if isPrime(i) == 1    % isPrime(i)=1 means that it's prime Number
            while mod(n, i) == 0 % if remainder is 0
                fprintf('%d \n', i); % print a primeNumber
                n = n / i;           % devide n by this primeNum.
            end
        end
    end
end

end