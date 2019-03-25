function [ simulationData ] = pState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

rTreshold = simulationData.coefficients.pCoefficients.rNode;

hTreshold = rTreshold + simulationData.coefficients.pCoefficients.hNode *...
            size(simulationData.enemies,2)  / simulationData.map.notRevealed;
        
tmpRandom = (hTreshold*1.5)* rand(1,1);


simulationData.robots(i).distanceMap = calculateDistanceMap(simulationData.robots(i).position ,...
    simulationData.constants.MapSize);

    if tmpRandom <= rTreshold
        
        simulationData = proceedToRState(simulationData , i);
        
    elseif (tmpRandom <= hTreshold && tmpRandom > rTreshold ) ...
            || simulationData.map.notRevealed == size(simulationData.enemies,2)
        
        simulationData = proceedToHState(simulationData , i);
        
    else 
        
        simulationData = proceedToEState(simulationData , i);
        
    end

end

