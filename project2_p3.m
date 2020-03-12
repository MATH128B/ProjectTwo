format long

% Give several pairs of InputList and InputWeight values
C1 = [10; 20; 30];
w1 = [10 20 30];
Neuron(C1, w1)
% NET = 1400, OUT = 1

C2 = [.1;.1;.1];
w2 = [.2 .2 .2];
Neuron(C2, w2)
% NET = 0.06, OUT = 0.514995501619410
 
C3 = [.01;.01;.01];
w3 = [.02 .02 .02];
Neuron(C3, w3)
% NET = 6.000000000000001e-04, OUT =  0.500149999995500

% Given F = sigmoidal (logistic) function:
% As the values of NET decrease, so do the OUT values

function [ OUT ] = Neuron(C, w)
%INPUT: n input connections, "C"
%       n input weights "w"
% NET is summation of two matrices
NET = w * C
OUT = 1/(1+exp(-NET));
end
