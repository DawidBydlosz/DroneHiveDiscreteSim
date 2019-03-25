function [ travelTime ] = shortestPathRob(simData , i, target)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
travelTime = 0 ;

rowNum = [-1, 0, 0, 1]; 
colNum = [0, -1, 1, 0]; 

foundFlag = false;





if foundFlag ~= false

else
    travelTime = travelTime + shortestPathRob(simData , i, simData.robots(i).startingPosition);
    travelTime = travelTime + simData.constants.OutOfMapRouteLenght;
    travelTime = travelTime + shortestPathRob(simData , simData.issuer , simData.engagementPosition);
end


position = simData.robots(i).position;
starting = simData.robots(i).startingPosition;
helpingArray = zeros(simData.constants.MapSize, simData.constants.MapSize, 2);

tmpBack = simData.constants.MapSize;
tmpForw = 0;

bestNextX = position.posX;
bestNextY = position.posY;

found =0;

        if simulationData.map.roomsRevealed(x,y)
            helpingArray(x,y,1) = abs(position.posX - x) + abs(position.posY - y);
            helpingArray(x,y,2) = abs(starting.posX - x) + abs(starting.posY - y);

end
