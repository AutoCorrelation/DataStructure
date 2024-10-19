classdef Father < GrandFather

    methods
        function this=Father(paramHome)
            if nargin==0
                paramHome = 'Seoul';
            end
            this = this@GrandFather(paramHome);
        end
        function doFatherTHing(this)
            disp('Father''s action');
        end
        function doRunning(this)
            disp('slow');
        end
    end
end
