package com.dataStructures.collections
{
    import com.dataStructures.node.IntNode;

    public class IntLinkBag
    {
        private var head:IntNode;
        private var nodeNumber:int;
        private var i:int;
        public function IntLinkBag()
        {
            head = null;
            nodeNumber = 0;
        }
        
        public function add(element:int):void{
            head = new IntNode(element,head);
            nodeNumber ++;
        }
        
        public function addMany(...args):void{
            for each ( i in args){
                add(i);
            }
        }
        
        public function addAll(bag:IntLinkBag):void{
            var vec:Vector.<IntNode>;
            if(bag == null){
                throw new Error("bag is null")
            }
            if(bag.nodeNumber > 0){
                vec = IntNode.cloneWithTail(bag.head);
                vec[1].link = head;
                head = vec[0];
                nodeNumber += bag.nodeNumber;
            }
        }
        
        public function remove(target:int):Boolean{
            var targetNode:IntNode = IntNode.getNodeByPosition(head,target);
            if(targetNode == null)
                return false;
            else{
                targetNode.data = head.data;
                head = head.link;
                nodeNumber --;
                return true;
            }
                
        }
    }
}