function [ simulationData ] = moveRobot(simData , i , target)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;
simulationData.robots(i).position = target;

simulationData.robots(i).engagement = simulationData.robots(i).distanceMap(...
    simulationData.robots(i).position.posX, simulationData.robots(i).position.posY);



simulationData.map.revealed = simulationData.map.revealed  +1;
simulationData.map.notRevealed = simulationData.map.notRevealed  -1;
simulationData.map.roomsRevealed(simulationData.robots(i).position.posX,...
    simulationData.robots(i).position.posY)=1;

end
