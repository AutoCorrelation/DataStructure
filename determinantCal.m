function [outputArg1] = determinantCal(inputArg1,dim)

if dim==1
    outputArg1 = inputArg1(1,1);        %  case: size 1by1 matrix
    
elseif dim==2
    outputArg1 = inputArg1(1,1)*inputArg1(2,2)...
        -inputArg1(1,2)*inputArg1(2,1); % case: size 2by2 matrix

elseif dim>=3
    tempArray = zeros(dim,1);
    iCofactor = zeros(1,dim);   
    i=1;

    if dim>=7                           %   this algorithm is effective more than 7 size
        for num1 = 1:dim                %   search row vector that includes 0 for that's element
            for num2 = 1:dim            
                if inputArg1(num1,num2)==0
                    i = num1;           %   save index
                    break;
                end
            end
            if inputArg1(i,num2)==0     %   break for searching i
                break;
            end
        end
    end                                 %   end searching

    for j=1:dim
        if inputArg1(i,j)==0    %   when we meet 0 element, pass this for loop
            continue            %   for minimize to use recursive func.
        end
        iCofactor(1,j) = mpower(-1,i+j)*...         %recursive part
            determinantCal(inputArg1([1:i-1,i+1:end],[1:j-1,j+1:end]),dim-1); 
        tempArray(j,1) = inputArg1(i,j)*iCofactor(1,j);
    end
    outputArg1=sum(tempArray,'all');
end