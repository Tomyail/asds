package test.com.dataStructures.node
{
    import com.dataStructures.collections.IntLinkBag;

    public class IntLinkBagTest
    {
        private var bag1:IntLinkBag = new IntLinkBag();
        private var bag2:IntLinkBag = new IntLinkBag();
        public function IntLinkBagTest()
        {
            bag1.add(1);
            bag2.add(2);
//            bag2.addAll(bag1);
            
            bag2.addMany(3,4);
        }
    }
}