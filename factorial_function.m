function [outputArg1] = factorial_function(inputArg1)
    if inputArg1==1
        outputArg1 =1;
    else
        outputArg1 = inputArg1*factorial_function(inputArg1-1);
    end
end

