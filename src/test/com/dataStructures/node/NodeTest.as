package test.com.dataStructures.node
{
    import com.dataStructures.node.IntNode;

    public class NodeTest
    {
        private var head:IntNode;
        public function NodeTest()
        {
            head = new IntNode();
            head.addNodeAfter(1);
//            trace(IntNode.getLength(head));
            trace(IntNode.getNodeByPosition(head,-1));
            
            var tail:IntNode = new IntNode(2);
            tail.addNodeAfter(3);
            head.addNodesAfter(tail);
            
            trace(IntNode.getNodeByPosition(head,-1));
        }
    }
}