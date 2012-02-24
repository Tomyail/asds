package com.dataStructures.search
{
    public class Search
    {
        public function Search()
        {
        }
        
        /**
         * 进行二分查找 
         * @param source 要查找的数据源(已经排序）
         * @param target 查找目标
         * @param first 要查找部分的起始索引
         * @param size 要查找的元素个数
         * @return 如果找到，返回目标索引，否则返回-1
         * 
         */        
        public static function search(source:Vector.<int>,target:int,first:int,size:int):int{
            var middle:int;
            if(size <=0)
                return -1;
            else
            {
                middle = first + size/2;
                if(target == source[middle]
                    return middle;
                else if(target < source[middle])
                    return search(source,target,first,size/2);
                else
                    return search(source,target,middle+1,(size-1)/2);
            }
        }
    }
}