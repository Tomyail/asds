package
{
    import com.dataStructures.graph.Dijkstra;
    import com.dataStructures.graph.Graph;
    import com.dataStructures.graph.GraphRecurse;
    import com.dataStructures.queue.ArrayQueue;
    import com.dataStructures.queue.LinkedQueue;
    import com.dataStructures.stack.ArrayStack;
    import com.dataStructures.stack.LinkedStack;
    
    import flash.display.Sprite;
    
    import test.com.dataStructures.node.IntLinkBagTest;
    import test.com.dataStructures.node.NodeTest;
    
    public class As3DataStructures extends Sprite
    {
        public function As3DataStructures()
        {
//            var nodeTest:NodeTest = new NodeTest;
            var intLinkBag:IntLinkBagTest = new IntLinkBagTest();
            
//            testArrayStack();
//            testLinkedStack();
//            testArrayQueue();
//            testLinkedQueue();
//            testGraph();
            testGraphRecurse();
        }
        
        private function testGraphRecurse():void
        {
            var graph:Graph = new Graph(10,false);
            graph.addEdge(0,3);
            graph.addEdge(0,1);
            graph.addEdge(3,1);
            graph.addEdge(3,2);
            graph.addEdge(1,2);
            graph.addEdge(1,4);
            graph.addEdge(4,5);
            graph.addEdge(4,7);
            graph.addEdge(7,8);
            graph.addEdge(8,9);
            graph.addEdge(3,7);
//            graph.addEdge(3,8);
            graph.addEdge(5,6);
            graph.addEdge(2,6);
            graph.setData(0,0);
            graph.setData(3,3);
            graph.setData(1,1);
            graph.setData(2,2);
            graph.setData(4,4);
            graph.setData(5,5);
            graph.setData(6,6);
            
            var d:Dijkstra = new Dijkstra();
            d.calcute(graph,0,true);
            trace(d.distance);
            trace(d.getPath(9));
            
//            var marked:Vector.<Boolean> = new Vector.<Boolean>(graph.size());
//            trace("deep")
//            GraphRecurse.deepFirstRecurse(graph,0,marked);
//            trace("breadth")
//            var mark2:Vector.<Boolean> = new Vector.<Boolean>(graph.size());
//            GraphRecurse.breadthFirstRecurse(graph,0,mark2);
            
        }
        
        private function testGraph():void
        {
            var graph:Graph = new Graph(10);
            trace(graph.isEdge(1,1));
            trace(graph.addEdge(0,0));
            trace(graph.isEdge(0,0));
        }
        
        private function testLinkedQueue():void
        {
            var linkedQueue:LinkedQueue = new LinkedQueue();
            linkedQueue.add(1);
            linkedQueue.add(2);
            linkedQueue.add(3);
            trace(linkedQueue.remove());
            linkedQueue.add(4);
            trace(linkedQueue.remove());
            trace(linkedQueue.remove());
            trace(linkedQueue.remove());
            trace(linkedQueue.remove());
        }
        
        private function testArrayQueue():void
        {
            var arrayQueue:ArrayQueue = new ArrayQueue(1);
            arrayQueue.add(1);
            arrayQueue.add(2);
            arrayQueue.add(3);
            trace(arrayQueue.remove());
            arrayQueue.add(4);
            trace(arrayQueue.remove());
            trace(arrayQueue.remove());
        }
        
        private function testLinkedStack():void
        {
            var linkStack:LinkedStack = new LinkedStack();
//            linkStack.peek();
            linkStack.push(1);
            linkStack.push(2);
            trace(linkStack.size());
            trace(linkStack.isEmpty());
            trace(linkStack.peek());
            trace(linkStack.pop());
            trace(linkStack.pop());
//            trace(linkStack.pop());
        }
        
        private function testArrayStack():void
        {
            var arrayStack:ArrayStack = new ArrayStack(1);
            arrayStack.push(1);
            arrayStack.push(2);
            arrayStack.ensureCapacity(20);
            arrayStack.trimToSize();
            trace(arrayStack.pop());
            trace(arrayStack.pop());
            trace(arrayStack.pop());
        }
    }
}