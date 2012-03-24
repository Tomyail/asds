package com.dataStructures.graph
{
    public class Dijkstra
    {
        public function Dijkstra()
        {
            _distance = new Vector.<int>();
            _unallowedVertices = new Vector.<int>();
        }
        
        private var _distance:Vector.<int>;
        private var _unallowedVertices:Vector.<int>;
        public function calcute(graph:Graph,startVertex:int):void
        {
            _distance.length = 0;
            var l:int = graph.size();
            //下一个需要计算的节点
            var next:int;
            var i:int = 0;
            var neihbour:Vector.<int>;
            var sum:int;
            for(i = 0;i<l;i++)
            {
                _distance[i] = -1;
                _unallowedVertices[i] = i;
            }
            _distance[startVertex] = 0;
            
            for(var allowedSize:int = 1;allowedSize < l;allowedSize++)
            {
                next = getNextAllowMini(_unallowedVertices);
                neihbour = graph.neighbors(next);
                
                for(i = 0;i<neihbour.length;i++)
                {
                    sum = _distance[next] + graph.getWeight(next,neihbour[i]);
                    if(_distance[neihbour[i]] == -1 || sum < _distance[neihbour[i]])
                    {
                        _distance[neihbour[i]] = sum;
                    }
                }
            }
        }
        
        public function get distance():Vector.<int>
        {
            return _distance;
        }
        
        private function getNextAllowMini(unallows:Vector.<int>):int
        {
            var miniIndex:int = 0;
            //注意mini可能是-1
            var mini:int = _distance[unallows[miniIndex]];
            for(var i:int = 1;i<unallows.length;i++)
            {
                if((mini == -1 &&_distance[unallows[i]] != -1) ||(mini != -1 &&_distance[unallows[i]] != -1 && _distance[unallows[i]]< mini))
                {
                    miniIndex = i
                    mini = _distance[unallows[miniIndex]];
                }
            }
            
            //将最小的值从不允许列表中删除
            if(miniIndex +1 != unallows.length)
            {
                //本来应该新建一个result变量存储这个值，但是mini已经没用所以用它来存储最小
                mini = unallows[miniIndex]
                unallows[miniIndex] = unallows[unallows.length-1];
                unallows.length -=1;
                
                return mini
            }
            
            return unallows.pop();
        }
    }
}