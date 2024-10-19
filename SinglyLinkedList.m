classdef SinglyLinkedList<handle

    properties
        nodeHead
        nodeTail
        size
    end
    methods
        function this = SinglyLinkedList(this)
            this.nodeHead = Node();
            this.nodeHead.setbInHead(true);
            this.nodeTail = Node();
            this.nodeTail.setbInTail(true);
            this.nodeHead.setNext(this.nodeTail);
            this.size = 0;
        end

        function insertAt(this, objInsert, idxInsert)
            nodeNew = Node(objInsert);
            nodePrev = this.get(idxInsert-1);
            nodeNext = nodePrev.getNext();
            nodePrev.setNext(nodeNew);
            nodeNew.setNext(nodeNext);
            this.size = this.size+1;
        end

        function removeValue(this, idxRemove)
            nodePrev = this.get(idxRemove-1);
            nodeRemove = nodePrev.getNext();
            nodeNext = nodeRemove.getNext();
            nodePrev.setNext(nodeNext);
            this.size = this.size-1;
            removeValue = nodeRemove.getValue();
        end

        function nodeReturn = get(this, idxRetreive)
            nodeReturn = this.nodeHead;
            for iter=1:idxRetreive
                nodeReturn = nodeReturn.getNext();
            end
        end

        function printStatus(this)
            nodeCurrent = this.nodeHead;
            for iter = 1:this.size
                nodeCurrent = nodeCurrent.getNext();
                disp(nodeCurrent.getValue());
            end
        end

        function size = getSize(this)
            size = this.size;
        end
    end
end