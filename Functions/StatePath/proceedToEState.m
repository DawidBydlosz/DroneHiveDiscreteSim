function [ simulationData ] = proceedToEState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

        simulationData.robots(i).state = 'E';
        target = findTheClosestOne(simulationData , i);
        simulationData = moveRobot(simulationData, i, target);

end
