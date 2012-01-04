package com.dataStructures.tree
{
    public class BTNode
    {
        private var _data:int;
        private var _left:BTNode;
        private var _right:BTNode;
        
        
        /**
         * 初始化一个指定了初始数据和左右孩子额连接节点 
         * @param initialData 初始数据
         * @param initialLeft 左孩子
         * @param initialRight 右孩子
         */
        public function BTNode(initialData:int,initialLeft:BTNode = null,initialRight:BTNode = null)
        {
            this._data = initialData;
            this._left = initialLeft;
            this._right = initialRight;
        }
        
        /** 此节点是否是叶子节点（没有左右孩子节点）*/
        public function isLeaf():Boolean{
            return (_left == null) && (_right == null);
        }
        
        /** 从本节点开始取得树的最左节点的数据*/
        public function getLeftMostData():int{
            
        }
        
        /** 从本节点开始取得树的最右节点的数据*/
        public function getRightMostData():int{
            
        }
        
        /** 删除以该节点为根节点的树的最左节点*/
        public function removeLeftMost():int{
            
        }
        
        /** 删除以该节点为根节点的树的最右节点*/
        public function removeRightMost():int{
            
        }
        
        /** 复制二叉树*/
        public static function treeCopy(source:BTNode):BTNode{
            
        }
        
        
        /** 前序号遍历*/
        public  function preorderPrint():void{
            
        }
        
        /** 中序遍历*/
        public function inorderPrint():void{
            
        }
        
        /** 后序遍历*/
        public function postorderPrint():void{
            
        }
        
        /**
        *  getter and setter
        */

        public function get data():int
        {
            return _data;
        }

        public function set data(value:int):void
        {
            _data = value;
        }

        public function get left():BTNode
        {
            return _left;
        }

        public function set left(value:BTNode):void
        {
            _left = value;
        }

        public function get right():BTNode
        {
            return _right;
        }

        public function set right(value:BTNode):void
        {
            _right = value;
        }


    }
}