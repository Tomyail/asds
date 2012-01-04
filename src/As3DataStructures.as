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
            var arrayStack:ArrayStack = new ArrayStack(10);
        }
    }
}