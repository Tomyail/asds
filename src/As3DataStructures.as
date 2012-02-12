package
{
    import com.dataStructures.stack.ArrayStack;
    
    import flash.display.Sprite;
    
    import test.com.dataStructures.node.IntLinkBagTest;
    import test.com.dataStructures.node.NodeTest;
    
    public class As3DataStructures extends Sprite
    {
        public function As3DataStructures()
        {
//            var nodeTest:NodeTest = new NodeTest;
            var intLinkBag:IntLinkBagTest = new IntLinkBagTest();
            
            testArrayStack();
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