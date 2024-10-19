clear all;
clc;
format long
syms s I1;
I1 = (0.3*s*s*s+s*s+3.2*s)/(0.02*s*s*s*s+0.05*s*s*s+0.18*s*s+0.2*s+0.4);
i1 = ilaplace(I1)
