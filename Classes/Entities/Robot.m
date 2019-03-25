classdef Robot
    %ENEMY Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        efficiency
        speed
        position
        startingPosition
        state
        backtrackPath
        distanceMap
        engagement
    end
    
    methods
         function EN = Robot(d,h,p,s)
         EN.efficiency = d;
         EN.speed = h;
         EN.position = p;
         EN.startingPosition = p;
         EN.state = 'E';
         EN.distanceMap = zeros(s, s);
         EN.backtrackPath = calculateDistanceMap(p,s);
         EN.engagement=0;
         end
    end
    
end

