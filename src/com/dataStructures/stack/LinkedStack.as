package com.dataStructures.stack
{
    import com.dataStructures.node.IntNode;

    public class LinkedStack implements IStack
    {
        private var _top:IntNode;
        
        public function LinkedStack()
        {
            _top = null;
        }
        
        public function isEmpty():Boolean
        {
            return (_top == null);
        }
        
        public function peek():int
        {
            if(_top == null)
            {
                throw new Error("Stack is empty");
            }
            return _top.data;
        }
        
        public function pop():int
        {
            if(_top == null)
            {
                throw new Error("Stack is empty");
            }
            var result:int = _top.data;
            _top = _top.link;
            return result;
        }
        
        public function push(item:int):void
        {
            _top = new IntNode(item,_top);
        }
        
        public function size():int
        {
            return IntNode.getLength(_top);
        }
        
    }
}