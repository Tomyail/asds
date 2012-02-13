package com.dataStructures.queue
{
    import com.dataStructures.IArray;
    
    import flash.display3D.IndexBuffer3D;
    
    public class ArrayQueue implements IQueue, IArray
    {
        private var _data:Vector.<int>;
        private var _manyItems:int;
        private var _front:int;
        private var _rear:int;
        /**
         * @param initialCapacity 初始队列大小
         */
        public function ArrayQueue(initialCapacity:int = 10)
        {
            _data = new Vector.<int>(initialCapacity);
            _manyItems = 0;
        }
        
        public function add(item:int):void
        {
            if(_manyItems == _data.length)
            {
                ensureCapacity(_manyItems*2+1);
            }
            if(_manyItems == 0)
            {
                _front = 0;
                _rear = 0;
            }
            else
                _rear = nextIndex(_rear);
            _data[_rear] = item;
            _manyItems ++;
        }
        
        private function nextIndex(currentIndex:int):int
        {
            if(currentIndex == _data.length -1)
                return 0;
            return currentIndex+1;
        }
        
        public function isEmpty():Boolean
        {
            return _manyItems == 0;
        }
        
        public function remove():int
        {
            if(_manyItems == 0)
            {
                throw new Error("Stack is empty")
            }
            var result:int = _data[_front];
            _data[_front] = 0;
            _front = nextIndex(_front);
            _manyItems --;
            return result;
        }
        
        public function size():int
        {
            return _manyItems
        }
        
        public function ensureCapacity(minimunCapacity:int):void
        {
            var tempData:Vector.<int>;
            if(_data.length >= minimunCapacity)
            {
                return ;
            }
            else if(_manyItems == 0)
            {
                _data = new Vector.<int>(minimunCapacity);
            }
            else if(_front <= _rear)
            {
                tempData = new Vector.<int>();
                tempData = tempData.concat(_data.slice(_front,_rear+1));
                tempData = tempData.concat(new Vector.<int>(minimunCapacity - 1 - _rear + _front)); 
                _data = tempData;
            }
            else
            {
                tempData = new Vector.<int>();
                tempData = tempData.concat(_data.slice(_front,_data.length));
                tempData = tempData.concat(_data.slice(0,_rear+1));
                tempData = tempData.concat(new Vector.<int>(minimunCapacity - _manyItems));
                _data = tempData;
            }
        }
        
        public function getCapacity():int
        {
            return _data.length;
        }
        
        public function trimToSize():void
        {
            if(_data.length == _manyItems)
                return;
            else if(_manyItems == 0)
            {
                _data.length = 0;
            }
            else if (_front <= _rear)
            {
                _data = _data.slice(_front,_rear+1);
            }
            else
            {
                var tempData:Vector.<int> = new Vector.<int>();
                tempData.concat(_data.slice(_front,_data.length));
                tempData.concat(_data.slice(0,_rear+1));
                _data = tempData;
            }
        }
    }
}