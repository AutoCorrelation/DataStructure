function [H] = radixHex(H, n)
% H vector 의 최대값을 찾는다.
maxValue = H(1);
for i = 2:n
    if H(i)>maxValue
        maxValue = H(i);
    end
end
% 가장 긴 16진수로 변환시 16진수의 자릿수
maxDigits = floor(log(maxValue)/log(16)) + 1;
H = dec2hex(H); % 10진수 배열을 16진수 char 배열로 변환
H = cellstr(H); % char 배열을 cell 배열로 변환
% 자릿수별로 반복
for d = maxDigits:-1:1
    % 버킷 초기화
    % 16개의 셀 배열 생성
    bucket = cell(1,16);
    % 각 버킷의 카운트를 1로 초기화
    bucketCount = ones(1,16);
    % 각 버킷에 해당하는 16진수 문자 저장
    % (비교하여 bucket을 지정하기위해)
    bucketChar = cellstr(dec2hex(0:15));

    % 버킷에 삽입.
    for i = 1:n
        for j = 1:16 % '0' ~ 'F'
            if H{i}(d) == bucketChar{j} % 16진수 문자 비교. 같으면
                bucket{j}{bucketCount(j)} = H{i}; % 해당 버킷에 요소 추가
                bucketCount(j) = bucketCount(j) + 1; % 해당 버킷의 카운트 증가
                break; % 다음 숫자로 접근. 한자리씩 비교하므로 더이상 비교할 필요가 없다.
            end
        end
    end
    % 버킷의 내용을 다시 배열로 결합
    % 한 자리수가 끝날 떄 마다
    % 각 버킷의 들어간 순서대로 나오는 Queue 형식의 bucket (FIFO)
    H = [bucket{:}];
end
% 정렬된 배열 반환
% 16진수 문자형 배열을 10진수 숫자형 배열로 변환
H = hex2dec(H);
end
