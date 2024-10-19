classdef Hotel
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here

    methods
        function openDoor(this)
            disp('Bellboy opens a door');
        end

        function checkIn(this,days)
            if nargin==1 % number of argument input
                days=1;
            end
            fprintf("someone check %d days \n",days);
        end
    end
end