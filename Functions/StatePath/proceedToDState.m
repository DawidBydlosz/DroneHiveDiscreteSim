function [ simulationData ] = proceedToDState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

        simulationData.robots(i).state = 'D';
        

end
