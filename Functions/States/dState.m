function [ simulationData ] = dState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

        tmpDamage = rand * simulationData.enemies(size(simulationData.enemies,2)).difficulty;

        
        simulationData.robots(i).efficiency = round(simulationData.robots(i).efficiency - tmpDamage );
        if simulationData.robots(i).efficiency <= 0
            simulationData.robots(i).state = 'F';
        else
        simulationData.robots(i).speed = min(1, ...
            round(simulationData.robots(i).speed * simulationData.robots(i).efficiency / simulationData.constants.RobotsEfficiency));
        simulationData.robots(i).state = 'C';
        
        simulationData.obstacleStr = simulationData.enemies(size(simulationData.enemies,2)).difficulty;
        simulationData.issuer = i;
        simulationData.engagementPosition = simulationData.robots(i).position;
        simulationData.warningFlag = true;
        end

end

