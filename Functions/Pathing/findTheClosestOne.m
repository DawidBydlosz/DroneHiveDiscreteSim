function [ target ] = findTheClosestOne(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;
target = simulationData.robots(i).position;


min = simulationData.robots(i).distanceMap(1,1);

for x = 1:simData.constants.MapSize
    for y = 1:simData.constants.MapSize
        if min > simulationData.robots(i).distanceMap(x,y) ...
                && simData.map.roomsRevealed(x,y) == 0 ...
                && simulationData.robots(i).distanceMap(x,y) ~= 0
            
            target = Position(x,y);
            min = simulationData.robots(i).distanceMap(x,y);
            
        end
        
    end
end

end
