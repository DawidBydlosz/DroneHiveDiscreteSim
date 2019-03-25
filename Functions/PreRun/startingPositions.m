function [ startingPositionVector ] = startingPositions( size,robots)
%STARTINGPOSITIONS Summary of this function goes here
%   Detailed explanation goes here
    
    startingPositionVector = Position.empty(robots,0);
    for i = 1:robots
        if 0 == mod(i,4)
            x = 1;
            y = randi(size);
        elseif 1 == mod(i,4)
            x = size;
            y = randi(size);
        elseif 2 == mod(i,4)
            x = randi(size);
            y = 1;
        else
            x = randi(size);
            y = size;               
        end
         startingPositionVector(i) = Position(x,y);
    end



end

