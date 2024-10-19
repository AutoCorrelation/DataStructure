clc
clear all
format long

%가
N_MAX = 1e4;
N = 1e2;
H = randi(N_MAX,1,N);

%나 준비( tic toc은 함수 내부에 생성함)
sorted_H = enhanced_radixSorting(H,N);