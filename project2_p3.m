format long    %compute with "long" number of sig digits

% Examine relationships of connections and weights
C1 = [10; 20; 30];
w1 = [10 20 30];
Neuron(C1, w1)
% NET = 1400, OUT = 1

C2 = [1;1;1];
w2 = [2 2 2];
Neuron(C2, w2)
% NET = 6, OUT = 0.997527376843365
 
C3 = [.1;.1;.1];
w3 = [.2 .2 .2];
Neuron(C3, w3)
% NET = 0.060..., OUT = 0.514995501619410

% Given F = sigmoidal (logistic) function:
% As the values of NET decrease, so do the OUT values

function [OUT] = Neuron(C, w)
%INPUT: n input connections, "C"
%       n input weights "w"
NET = w * C
OUT = 1/(1+exp(-NET)); %Function we were given
end
