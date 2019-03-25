function [ simulationData ] = proceedToRState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;
tmpDamage = rand/2;

    
        
        simulationData.robots(i).efficiency = round(simulationData.robots(i).efficiency - simulationData.robots(i).efficiency * tmpDamage);
        simulationData.robots(i).speed = min(1, ...
            round(simulationData.robots(i).speed * simulationData.robots(i).efficiency / simulationData.constants.RobotsEfficiency));
        
                if simulationData.robots(i).efficiency <= 0
            simulationData.robots(i).state = 'F';
        else
        simulationData.robots(i).state = 'R';
        simulationData = moveRobot(simulationData, i, simulationData.robots(i).startingPosition);
        simulationData.robots(i).engagement = simulationData.robots(i).engagement +...
            (simulationData.constants.RobotsEfficiency - round(simulationData.robots(i).efficiency * tmpDamage));
                end



end
