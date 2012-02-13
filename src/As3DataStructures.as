package
{
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
            testLinkedQueue();
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