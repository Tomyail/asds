package com.dataStructures.node
{
    public class IntNode
    {
        private var _data:int;
        private var _link:IntNode;
        
        /**
         * 构造一个节点 
         * @param data 节点数据
         * @param link 节点引用
         */
        public function IntNode(data:int = 0,link:IntNode = null)
        {
            _data = data;
            _link = link;
        }

        /** 返回一个已知节点之后的节点数量 */
        public static function getLength(headNode:IntNode):int{
            var length:int = 0;
            var tempNode:IntNode = headNode;
            
            while(tempNode){
                length ++;
                tempNode = tempNode._link;
            }
            return length;
        }
        
        /** 根据头节点返回指定数据的第一个节点的引用 */
        public static function getNodeByData(headNode:IntNode,data:int):IntNode{
            var tempNode:IntNode = headNode;
            
            while(tempNode){
                if(tempNode.data == data){
                    return tempNode;
                }
                tempNode = tempNode._link;
            }
            return null;
        }
        
        /** 根据头节点返回指定数据的所有节点的引用 */
        public static function getNodesByData(headNode:IntNode,data:int):Vector.<IntNode>{
            var tempNode:IntNode = headNode;
            var resultNodes:Vector.<IntNode> = new Vector.<IntNode>;
            
            while(tempNode){
                if(tempNode.data == data) resultNodes.push(tempNode);
                tempNode = tempNode._link;
            }
            return resultNodes;
        }
        
        /** 根据指定位置返回对应的节点,位置可以是负数，-1返回最后一个节点，-2倒数第二个，依次类推 */
        public static function getNodeByPosition(headNode:IntNode,position:int = 0):IntNode{
            var tempNode:IntNode = headNode;
            var index:int = 0;
            
            if(position < 0 && tempNode){
                return IntNode.getNodeByPosition(tempNode,IntNode.getLength(tempNode)+position)
            }
            while(tempNode){
                if(index == position){
                    return tempNode;
                }
                tempNode = tempNode._link;
                index ++;
            }
            return null;
        }
        
        /** 根据头节点复制一份链表 */
        public static function clone(headNode:IntNode):IntNode{
            var node:IntNode = new IntNode(tempNode.data);
            var tempNode:IntNode = headNode._link;
            
            while(tempNode){
                node.addNodeAfter(tempNode.data);
                tempNode = tempNode._link;
            }
            
            return node;
        }
        
        public static function cloneWithTail(headNode:IntNode):Vector.<IntNode>{
            var vec:Vector.<IntNode> = new Vector.<IntNode>(2,true);
            
            if(headNode == null)
                return vec;
            
            var head:IntNode = new IntNode(headNode.data);
            var tail:IntNode = head;
            
            while(tail.link){
                headNode = headNode._link;
                tail.addNodeAfter(headNode.data);
                tail = tail.link;
            }
            vec[0] = head;
            vec[1] = tail;
            return vec;
        }
        
        public function toString():String{
            return _data.toString();
        }
        
        /**
         * <p>在该节点之后增加一个新节点</p>
         * @param element
         */
        public function addNodeAfter(element:int):void{
            _link = new IntNode(element,_link);
        }
        
        /**
         * 删除这个节点之后的节点
         */
        public function removeNodeAfter():void{
            if(_link != null)
                _link = _link._link;
        }
        /** 此节点的引用 */
        public function get link():IntNode
        {
            return _link;
        }

        public function set link(value:IntNode):void
        {
            _link = value;
        }

        /** 此节点中的数据 */
        public function get data():int
        {
            return _data;
        }

        public function set data(value:int):void
        {
            _data = value;
        }

    }
}