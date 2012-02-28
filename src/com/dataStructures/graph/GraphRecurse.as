package com.dataStructures.graph
{
    public class GraphRecurse
    {
        public function GraphRecurse()
        {
        }
        
        public static function deepFirstRecurse(graph:Graph,vertexIndex:int,marked:Vector.<Boolean>):void
        {
            var connections:Vector.<int> = graph.neighbors(vertexIndex);
            
            marked[vertexIndex] = true;
            trace("vertexIndex",vertexIndex,"data",graph.getData(vertexIndex));
            
            var i:int;
            for each (i in connections)
            {
                if(!marked[i])
                    deepFirstRecurse(graph,i,marked);
            }
        }
        
        public static function breadthFirstRecurse(graph:Graph,vertexIndex:int,marked:Vector.<Boolean>):void
        {
            if(!marked[vertexIndex]){
                trace("vertexIndex",vertexIndex,"data",graph.getData(vertexIndex));
            }
            
            var connections:Vector.<int> = graph.neighbors(vertexIndex);
            var i:int;
            var tmp:Vector.<int> = new Vector.<int>;
            for each (i in connections)
            {
                if(!marked[i]){
                    tmp.push(i);
                    marked[i] = true;   
                    trace("vertexIndex",i,"data",graph.getData(i));
                    
                }
            }
            for each (i in tmp)
            {
                breadthFirstRecurse(graph,i,marked);
            }
        }
    }
}