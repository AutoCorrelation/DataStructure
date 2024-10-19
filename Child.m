classdef Child < Father
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        strName
    end

    methods
        function this = Child(paramHome)
            %UNTITLED3 Construct an instance of this class
            %   Detailed explanation goes here
            if nargin == 0
                paramHome = 'Daejun';
            end
            this = this@Father(paramHome);
            this.strName = 'Moon';
        end
        function doRunning(this) %masking = overriding
            disp('fast');
        end
    end
end