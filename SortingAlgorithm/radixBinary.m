function [x] = radixBinary(x, n)
% Find the maximum value to determine the number of digits

maxValue = x(1);
for i = 2:n             %get maxValue and its digit
    if x(i)>maxValue
        maxValue = x(i);
    end
end

maxDigits = floor(log2(maxValue)) + 1;  % 가장 긴 이진수의 자릿수
x = dec2bin(x);
x = cellstr(x);
% 자릿수별로 반복
for d = maxDigits:-1:1
    % 버킷 초기화
    bucket0 = {};
    bucket1 = {};
    bucket0Count = 1;
    bucket1Count = 1;

    % 배열의 각 요소를 적절한 버킷에 넣기
    for i = 1:n
        if x{i}(d) == '0'
            bucket0{bucket0Count} = x{i};
            bucket0Count = bucket0Count + 1;
        else
            bucket1{bucket1Count} = x{i};
            bucket1Count = bucket1Count + 1;
        end
    end

    % 버킷의 내용을 다시 배열로 결합
    x = [bucket0 bucket1];
end

% 정렬된 배열 반환
x = bin2dec(x);
end