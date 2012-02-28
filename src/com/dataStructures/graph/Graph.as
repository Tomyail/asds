package com.dataStructures.graph
{
    public class Graph implements IGraph
    {
        private var _edges:Vector.<Vector.<Boolean>>;
        private var _datas:Vector.<int>;
        
        public function Graph(n:int)
        {
            _edges = new Vector.<Vector.<Boolean>>(n);
            for(var i:int = 0;i<n;i++)
            {
                _edges[i] = new Vector.<Boolean>(n);
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
        
        public function addEdge(source:int, target:int):void
        {
            _edges[source][target] = true;
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