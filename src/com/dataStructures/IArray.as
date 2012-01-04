package com.dataStructures
{
    public interface IArray
    {
        /**
         * 改变容器大小
         * @param minimunCapacity 当前容器的新容量
         */
        function ensureCapacity(minimunCapacity:int):void;
        /**
         * 用于确定当前容器的大小
         * @return 当前容器的大小
         */
        function getCapacity():int;
        /**
         * 将容器的当前容量减小到其数据的实际大小
         */
        function trimToSize():void;
    }
}