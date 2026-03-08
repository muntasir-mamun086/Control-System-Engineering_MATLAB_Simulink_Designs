clc;
clear all;
close all;
% Part (a) solution, A as System Matrix
A = [0 1 0;
     0 0 1;
    -3 -2 -5];
% Input Matrix
B = [0;
     0;
     10];
% Output Matrix
C = [1 0 0];
% Feedforward Matrix
D = 0;
sys_a = ss(A,B,C,D);
G_a = tf(sys_a)

% Part (b) solution, A as System Matrix
A = [2 -3 -8;
     0 5 3;
    -3 -5 -4];
% Input Matrix
B = [1;
     4;
     6];
% Output Matrix
C = [1 3 6];
% Feedforward Matrix
D = 0;
sys_b = ss(A,B,C,D);
G_b = tf(sys_b)

% Part (c) solution, A as System Matrix
A = [3 -5 2;
     1 -8 7;
    -3 -6 2];
% Input Matrix
B = [5;
    -3;
     2];
% Output Matrix
C = [1 -4 3];
% Feedforward Matrix
D = 0;
sys_c = ss(A,B,C,D);
G_c = tf(sys_c)