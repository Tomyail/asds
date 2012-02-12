package com.dataStructures.stack
{
    import com.dataStructures.IArray;

    public class ArrayStack implements IArray,IStack
    {
        private var _data:Vector.<int>;
        private var _manyItems:int = 0;
        /**
         * @param initialCapacity 初始栈大小
         */
        public function ArrayStack(initialCapacity:int = 10)
        {
            _manyItems = 0;
            _data = new Vector.<int>(initialCapacity);
        }
        
        public function isEmpty():Boolean
        {
            return (_manyItems == 0);
        }
        
        public function peek():int
        {
            if(_manyItems == 0)
                throw new Error("stack is empty")
            return _data[_manyItems-1];
        }
        
        public function pop():int
        {
            if(_manyItems == 0)
            {
                throw new Error("Stack is empty")
            }
            var result:int = _data[--_manyItems];
            _data[_manyItems] = 0;
            return result;
        }
        
        public function push(item:int):void
        {
            if(_data.length == _manyItems)
            {
                ensureCapacity(_manyItems*2+1)
            }
            _data[_manyItems] = item;
            _manyItems ++;
        }
        
        public function size():int
        {
            return _manyItems;
        }
        
        public function ensureCapacity(minimunCapacity:int):void
        {
            if(minimunCapacity > _data.length)
            {
                _data = _data.concat(new Vector.<int>(minimunCapacity - _data.length));
            }
        }
        
        public function getCapacity():int
        {
            return _data.length;
        }
        
        public function trimToSize():void
        {
            if(_manyItems != _data.length)
            {
                _data.splice(_manyItems,_data.length);
            }
        }
        
    }
}