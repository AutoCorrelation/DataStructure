classdef Stack < handle
    properties
        IstInstance
    end
    methods
        function this = Stack(this)
            this.IstInstance = SinglyLinkedList();
        end
        function value = pop(this)
            value = this.IstInstance.removeAt(1);
        end
        function push(this,value)
            this.IstInstance.insertAt(value,0);
        end
        function tf = isEmpty(this)
            tf = false;
            if this.IstInstance.getSize() == 0
                tf = true;
            end
        end
    end
end