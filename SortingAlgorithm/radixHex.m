function [x] = radixHex(x, n)
% Find the maximum value to determine the number of digits

maxValue = x(1);
for i = 2:n             %get maxValue and its digit
    if x(i)>maxValue
        maxValue = x(i);
    end
end

maxDigits = floor(log(maxValue)/log(16)) + 1;  % 가장 긴 16진수의 자릿수
x = dec2hex(x); % 10진수 배열을 16진수 문자형 배열로 변환
x = cellstr(x); % 문자형 배열을 셀 배열로 변환
% 자릿수별로 반복
    % 버킷 초기화
    bucket = cell(1,16); % 16개의 셀 배열 생성
    bucketCount = ones(1,16); % 각 버킷의 카운트를 1로 초기화
    bucketChar = cellstr(dec2hex(0:15)); % 각 버킷에 해당하는 16진수 문자 저장

    % 배열의 각 요소를 적절한 버킷에 넣기
    for i = 1:n
        for j = 1:16
            if hex2dec(x{i}(d)) == hex2dec(bucketChar{j}) % 16진수 문자를 숫자형으로 비교
                bucket{j}{bucketCount(j)} = x{i}; % 해당 버킷에 요소 추가
                bucketCount(j) = bucketCount(j) + 1; % 해당 버킷의 카운트 증가
                break;
            end
        end
    end

    % 버킷의 내용을 다시 배열로 결합
    x = [bucket{:}];%%
end

% 정렬된 배열 반환
x = hex2dec(x); % 16진수 문자형 배열을 10진수 숫자형 배열로 변환
end
