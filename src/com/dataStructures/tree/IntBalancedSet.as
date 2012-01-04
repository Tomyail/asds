package com.dataStructures.tree
{
    /**
     * B树由一个叫做MINIMUM的正常数决定
     * B树规则
     * 1：根节点最多只可以包含MINIMUM个元素，其他节点必须包含至少MINIMUM个元素
     * 2：节点包含元素个数的最大值是MINIMUM的两倍
     * 3：B树的每个节点按从小到大的顺序存储在数组里
     * 4：非叶子节点的子树数目比该节点元素的数目大1
     * 5：对任何非叶子节点：a：某节点的i号元素比该节点的i号子树的任何元素都大b:某节点的i号元素比该节点的i+1号子树的所有元素都小
     * 
     * @author tomyail
     */
    public class IntBalancedSet
    {
        public function IntBalancedSet()
        {
        }
        
        public function add(element:int):void{
            
        }
        
        public function contains(target:int):Boolean{
            
        }
        
        public function remove(target:int):Boolean{
            
        }
        
    }
}