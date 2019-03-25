classdef hCoefficientsData
    %ECOEFFICIENTSDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        pNode
        dNode
    end
    
    methods
        function EC = hCoefficientsData(p,d)
         EC.pNode = p;
         EC.dNode = d;
         end
    end
    
end

