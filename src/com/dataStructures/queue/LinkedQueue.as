package com.dataStructures.queue
{
    import com.dataStructures.node.IntNode;
    
    import flash.display.FrameLabel;

    public class LinkedQueue implements IQueue
    {
        private var _manyNodes:int;
        private var _front:IntNode;
        private var _rear:IntNode;
        
        public function LinkedQueue()
        {
            _front = null;
            _rear  null;
        }
        
        public function add(item:int):void
        {
            if(isEmpty())
            {
                _front = new IntNode(item,null);
                _rear = _front;
            }
            else
            {
                _rear.addNodeAfter(item);
                _rear = _rear.link;
            }
            _manyNodes ++;
        }
        
        public function isEmpty():Boolean
        {
            return _manyNodes == 0;
        }
        
        public function remove():int
        {
            if(_manyNodes == 0)
            {
                throw new Error("queue is empty");
            }
            var result:int = _front.data;
            _front = _front.link;
            _manyNodes --;
            if(_manyNodes == 0)
            {
                _rear == null
            }
            return result;
        }
        
        public function size():int
        {
            return _manyNodes;
        }
    }
}