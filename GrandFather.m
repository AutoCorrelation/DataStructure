classdef GrandFather < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        strHometown
    end

    methods
        function this = GrandFather(paramHome) %reference variable (this=GrandFather)
            % 생성자 constructor
            if nargin==0 % nargin == 0 call this function inputValue
                paramHome = 'Jeju';
            end
            this.strHometown = paramHome;
        end
        function doGrandFatherThing(this)
            disp('Grandfather''s action');
        end
        function doRunnig(this)
                disp('Very slow');
        end
    end
end