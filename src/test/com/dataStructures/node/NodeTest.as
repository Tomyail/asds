package test.com.dataStructures.node
{
    import com.dataStructures.node.IntNode;

    public class NodeTest
    {
        private var head:IntNode;
        public function NodeTest()
        {
            head = new IntNode();
            head.addNodeAfter(3);
//            trace(IntNode.getLength(head));
            trace(IntNode.getNodeByPosition(head,-2));
        }
    }
}