classdef RandomCoefficientsData
    %RANDOMCOEFFICIENTSDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        eCoefficients
        pCoefficients
        mCoefficients
        hCoefficients
        wCoefficients
        cCoefficients
        rCoefficients
    end
    
    methods
        function RCD = RandomCoefficientsData(e,p,m,h,w,c,r)
         RCD.eCoefficients = e;
         RCD.pCoefficients = p;
         RCD.mCoefficients = m;
         RCD.hCoefficients = h;
         RCD.wCoefficients = w;
         RCD.cCoefficients = c;
         RCD.rCoefficients = r;
         
         end
    end
    
end

