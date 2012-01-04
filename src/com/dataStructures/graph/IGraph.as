package com.dataStructures.graph
{
    /**
    * 1：二维数组实现
    * 2：边列表
    * 3：边集合
    */
   
    public interface IGraph
    {
        /**
         * 增加一条边 
         * @param source 起始顶点编号
         * @param target 目标顶点编号
         */
        function addEdge(source:int,target:int):void;
        /** 测试一条边是否已经存在*/
        function isEdge(source:int,target:int):void;
        /** 删除一条边*/
        function removeEdge(source:int,target:int):void;
        /** 获取指定顶点的领接顶点列表*/
        function neighbors(vertex:int):Vector.<int>;
    }
}