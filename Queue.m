classdef Queue < handle
    properties
        IstInstance
    end
    methods
        function this = Queue(this)
            this.IstInstance = SinglyLinkedList();
        end
        function value = dequeue(this)
            value = this.IstInstance.removeAt(1);
        end
        function enqueue(this, value)
            this.IstInstance.insertAt(value, this.IstInstance.getSize()+1);
        end
        function tf = isEmpty(this)
            tf=false;
            if this.IstInstance.getSize() == 0
                tf = true;
            end
        end
    end
end
