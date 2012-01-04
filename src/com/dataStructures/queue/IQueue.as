package com.dataStructures.queue
{
    public interface IQueue
    {
        /**
         * 将新数据添加到队列尾部
         * @param item 新数据
         */
        function add(item:int):void;
        /**
         * 确定队列是否是空 
         */
        function isEmpty():Boolean;
        /**
         * 获取对头元素，并将其从队列中删除 
         * @return 对头元素
         */
        function remove():int;
        /**
         * 队列中数据项的数量
         * @return 
         */
        function size():int;
    }
}