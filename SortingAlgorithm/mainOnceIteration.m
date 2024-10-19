clc
clear all
% format long
N = 2^8;
X = randi(N,1,N);
% % my Sorting
% tic
% Y1 = MySorting(X,N);
% toc

% % 순차정렬
% tic
% Y2 = seqSorting(X,N);
% toc

% % 버블소트
% tic
% Y3 = bubbleSort(X,N);
% toc

% qucik sort
tic
Y4 = quickSort(X,1,N);
toc

% % insert sort
% tic
% Y5 = insertSort(X,N);
% toc
% 
% % shell Sort
% tic
% Y6 = shellSort(X,N);
% toc
% 
% %radix Sort
% tic
% Y7 = radixSort(X,N);
% toc

% averagePivot
tic
Y8=averagePivot(X,N);
toc

% % 내장함수
% tic
% Yn = sort(X);
% toc
% 
% % radix Sort2
% tic
% Y9 = radixBinary(X,N);
% toc


