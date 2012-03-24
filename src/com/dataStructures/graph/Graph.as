package com.dataStructures.graph
{
    public class Graph implements IGraph
    {
        private var _edges:Vector.<Vector.<Boolean>>;
        private var _weights:Vector.<Vector.<Number>>;
        private var _datas:Vector.<int>;
        private var _hasDirection:Boolean;
        
        /**
         * 新建一个图 
         * @param n 节点个数
         * @param hasDirection 是否是有向图
         * 
         */
        public function Graph(n:int,hasDirection:Boolean = true)
        {
            _hasDirection = hasDirection;
            _edges = new Vector.<Vector.<Boolean>>(n);
            _weights = new Vector.<Vector.<Number>>(n);
            for(var i:int = 0;i<n;i++)
            {
                _edges[i] = new Vector.<Boolean>(n);
                _weights[i] = new Vector.<Number>(n);
            }
            _datas = new Vector.<int>(n);
        }
        
        public function getData(vertex:int):int
        {
            return _datas[vertex];
        }
        
        public function setData(vertex:int,data:int):void
        {
            _datas[vertex] = data;
        }
        
        public function addEdge(source:int, target:int,weight:Number=1):void
        {
            _edges[source][target] = true;
            _weights[source][target] = weight;
            
            if(_hasDirection) return;
            
            _edges[target][source] = true;
            _weights[target][source] = weight;
            
        }
        
        public function getWeight(source:int,target:int):Number
        {
            return _weights[source][target]
        }
        
        public function isEdge(source:int, target:int):Boolean
        {
            return _edges[source][target];
        }
        
        public function removeEdge(source:int, target:int):void
        {
            _edges[source][target] = false;
        }
        
        public function neighbors(vertex:int):Vector.<int>
        {
            var result:Vector.<int> = new Vector.<int>();
            var target:Vector.<Boolean> = _edges[vertex];
            for(var i:int = 0;i< target.length;i++)
            {
                if(target[i])
                    result.push(i);
            }
            
            return result;
        }
        
        public function size():int
        {
            return _datas.length;
        }
    }
}