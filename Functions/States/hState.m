function [ simulationData ] = hState(simData , i)
%ESTATE Summary of this function goes here
%   Detailed explanation goes here
simulationData = simData;

pTreshold = simulationData.coefficients.hCoefficients.pNode *...
            size(simulationData.enemies,2)  / simulationData.map.notRevealed;

dTreshold = pTreshold + simulationData.coefficients.hCoefficients.dNode *...
            size(simulationData.enemies,2)  / simulationData.map.notRevealed;
        
tmpRandom = (dTreshold)* rand(1,1);


simulationData.robots(i).distanceMap = calculateDistanceMap(simulationData.robots(i).position ,...
    simulationData.constants.MapSize);

    if simulationData.map.notRevealed == size(simulationData.enemies,2)
        simulationData = proceedToDState(simulationData , i);
        
    elseif tmpRandom <= pTreshold
        
        simulationData = proceedToPState(simulationData , i);
        
    else
        
        simulationData = proceedToDState(simulationData , i);
        
    end

end

