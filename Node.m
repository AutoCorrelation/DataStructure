classdef Node < handle
    properties
        objValue
    end
    properties(SetAccess = private)
        nodeNext
        nodePrev
        bInHead
        bInTail
    end
    methods
        function this = Node(ovjValue)
            if nargin>0
                this.objValue = ovjValue;
            else
                this.objValue = [];
            end
            this.nodeNext = [];
            this.nodePrev = [];
            this.bInHead = false;
            this.bInTail = false;
        end
        function value = getValue(this)
            value = this.objValue;
        end
        function setValue(this,objValue)
            this.ovjValue = objValue;
        end
        function next = getNext(this)
            next = this.nodeNext;
        end
        function setNext(this,nodeNext)
            this.nodeNext = nodeNext;
        end
        function tf = isHead(this)
            tf = this.bInHead;
        end
        function setbInHead(this,bInHead)
            this.bInHead = bInHead;
        end
        function tf = isTail(this)
            tf = this.bInTail;
        end
        function setbInTail(this, bInTail)
            this.bInTail = bInTail;
        end
    end
end

