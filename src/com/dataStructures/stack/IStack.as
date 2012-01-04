package com.dataStructures.stack
{
    public interface IStack
    {
        /**
         * 栈是否为空
         * @return 
         */
        function isEmpty():Boolean;
        /**
         * 在不移除栈顶数据项的情况下，获得栈顶数据项的值
         * @return 栈顶数据
         */
        function peek():int;
        
        /**
         * 获得栈顶数据并从栈中移除
         * @return 栈顶数据
         */        
        function pop():int;
        
        /**
         * 将一个新数据压入栈 
         * @param item
         */        
        function push(item:int):void;
        
        /**
         * 确定栈中数据项的个数
         * @return 栈中数据项的个数
         */        
        function size():int;

    }
}