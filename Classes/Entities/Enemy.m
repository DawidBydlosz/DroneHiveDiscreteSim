classdef Enemy
    %ENEMY Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        difficulty
        hardness
        %position
    end
    
    methods
         function EN = Enemy(d,h) % p)
         EN.difficulty = d;
         EN.hardness = h;
         %EN.position = p;
         
         end
    end
    
end

