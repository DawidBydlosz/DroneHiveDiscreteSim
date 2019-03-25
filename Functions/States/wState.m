function [ simulationData ] = wState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;
tmp = i;

simulationData.waitingStr = simulationData.waitingStr +1;

end

