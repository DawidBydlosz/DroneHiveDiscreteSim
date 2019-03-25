classdef eCoefficientsData
    %ECOEFFICIENTSDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        pNode
        hNode
        dNode
        rNode
    end
    
    methods
        function EC = eCoefficientsData(p,h,d,r)
         EC.pNode = p;
         EC.hNode = h;
         EC.dNode = d;
         EC.rNode = r;
         end
    end
    
end

