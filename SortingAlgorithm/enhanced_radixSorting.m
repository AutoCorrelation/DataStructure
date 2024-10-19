function sorted_H = enhanced_radixSorting(x,N)
    % tic
    H1 = [];
    H2 = [];
    subsetCounter = 0;  %부분 집합들의 갯수를 세기위한 변수
    %나
    %행렬 H의 모든 원소들의 평균계산
    pivot = mean(x);
    %평균 값을 기준으로 2개의 행렬 H1과 H2로 나눔.
    for count = 1:N
        if x(count) <= pivot
            %다
            H1 = [H1,x(count)];
            subsetCounter = subsetCounter+1;
        else
            %라
            H2 = [x(count),H2];
        end
    end
    % 마--함수의 inputArgument로 H1 H2를 넣고
    % radix Sorting Algorithm 내부에서 16진수 변환 할 예정.
    % 이것이 더 보기 좋은 코딩이라고 생각했음.
    sorted_H1 = radixHex(H1,subsetCounter);
    %바
    sorted_H2 = radixHex(H2,N-subsetCounter);
    %사
    sorted_H = [sorted_H1 ; sorted_H2];
    % toc
end

