//
//  CQHDataDefine.h
//  CQHAlgorithm
//
//  Created by cqh on 2020/11/13.
//

#ifndef CQHDataDefine_h
#define CQHDataDefine_h

#include <stdio.h>

#pragma mark - 排序算法所用数据结构
//const int SORT_MAX_SIZE = 10;

#pragma mark - 排序数组数据模型
typedef struct {
    int array[11];
    int length;
}Sqlist;

#pragma mark - 单链表Node
struct ListNode{
    int val;
    struct ListNode *next;
};

void swap(int array[], int i, int j);

#endif /* CQHDataDefine_h */
