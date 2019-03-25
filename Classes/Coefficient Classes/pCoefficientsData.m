classdef pCoefficientsData
    %ECOEFFICIENTSDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        eNode
        hNode
        rNode
    end
    
    methods
        function EC = pCoefficientsData(e,h,r)
         EC.eNode = e;
         EC.hNode = h;
         EC.rNode = r;
         end
    end
    
end

