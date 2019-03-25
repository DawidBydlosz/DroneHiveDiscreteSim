classdef MapData
    %MAPDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        roomsRevealed
        startingPositionsVector
        revealed
        notRevealed
    end
    
    methods
         function MD = MapData(size,robots, rev , notRev)
             MD.roomsRevealed = zeros(size, size);
             MD.startingPositionsVector = startingPositions(size,robots);
             MD.revealed = rev;
             MD.notRevealed = notRev;
         end
    end
    
end

