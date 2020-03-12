



% Give several pairs of InputList and InputWeight values
 C1 = [1; 2; 3];
 w1 = [1 2 3];
 Neuron(C1, w1)
% This gives the case where NET = 14 OUT = 9.999991684719722e-01

 C2 = [.1;.1;.1];
 w2 = [.2 .2 .2];
 Neuron(C2, w2)
% This gives the case where NET = 6.000000000000001e-02 and the
% corresponding OUT = 5.149955016194100e-01

 C3 = [.01;.01;.01];
 w3 = [.02 .02 .02];
 Neuron(C3, w3)
% This gives NET = 6.000000000000001e-04 and the OUT = 5.001499999954999e-01

% From the above three cases we observe that for F = logistics function, as
% NET gets smaller, the value of OUT is getting smaller too. This implies
% that smalle value of NET gives small value of OUT and vice versa.

function [ OUT ] = Neuron(C, w)
%INPUT: n input connections, "C"
%       n input weights "w"
% NET is summation of two matrices
NET = w * C;
OUT = 1/(1+exp(-NET));
end