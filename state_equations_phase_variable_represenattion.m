clc;
clear all;
close all;
% System (a) solution, the transfer function of 100 / (s^4 + 20s^3 + 10s^2 + 7s + 100)
num_a = [100];
den_a = [1, 20, 10, 7, 100];
% Convert to State-Space (Controller Canonical Form)
[Ac, Bc, Cc, Dc] = tf2ss(num_a, den_a);
% Convert to Phase-Variable Form by reversing state order
n_a = length(den_a) - 1;
J = flipud(eye(n_a)); % Exchange matrix
A_a = J * Ac * J;     % System Matrix
B_a = J * Bc;         % Input Matrix
C_a = Cc * J;         % Output Matrix
D_a = Dc;             % Feedforward Matrix
fprintf('Phase-variable form of system (a)  =\n');
disp('Matrix A:'), 
disp(A_a);
disp('Matrix B:'), 
disp(B_a);
disp('Matrix C:'), 
disp(C_a);
disp('Matrix D:'), 
disp(D_a);

% System (b) solution,the transfer function of 30 / (s^5 + 8s^4 + 9s^3 + 6s^2 + s + 30)
num_b = [30];
den_b = [1, 8, 9, 6, 1, 30];
% Convert to State-Space (Controller Canonical Form)
[Ac_b, Bc_b, Cc_b, Dc_b] = tf2ss(num_b, den_b);
% Convert to Phase-Variable Form by reversing state order
n_b = length(den_b) - 1;
J_b = flipud(eye(n_b));
A_b = J_b * Ac_b * J_b;   % System Matrix
B_b = J_b * Bc_b;         % Input Matrix
C_b = Cc_b * J_b;         % Output Matrix
D_b = Dc_b;               % Feedforward Matrix
fprintf('Phase-variable form of system (b) =\n');
disp('Matrix A:'), 
disp(A_b);
disp('Matrix B:'), 
disp(B_b);
disp('Matrix C:'), 
disp(C_b);
disp('Matrix D:'), 
disp(D_b);