%Part 4 MultiLayer Network
function[O]=MLNETWORK(C1,w1)%C1 is in format [x1,x2,x3,...,xn];
O=C1;                       %w1 is in format [w11,w12,w13,...,w1n]; where each
for i=1:length(w1)          % w1i is a weight matrix
    NETWORK=w1{i}*O; %NETWORK = Xw where w is the input vector and X is the
    O=1/(1+exp(-NETWORK));% ith matrix contained in w1
    O=O.';% The output O=F(NETWORK)
end