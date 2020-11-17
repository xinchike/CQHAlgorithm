//
//  CQHSortViewController.m
//  CQHAlgorithm
//
//  Created by cqh on 2020/11/13.
//

#import "CQHSortViewController.h"
#import "CQHDataDefine.h"
/*/
 基础概念
 1、排序的稳定性:见《大话数据结构》
 2、内排序与外排序：内：整个排序过程都在内存中； 外：记录太多，不能全放内存，涉及到内外存数据交换
 */

#pragma mark - c function
//****************分割线*****************冒泡
//最简单
void buddleSort0(int *array, int len) {
    for (int i=0; i<len; i++) {
        for (int j=i+1; j<len; j++) {
            if (array[i] > array[j]) {
                swap(array, i, j);
            }
        }
    }
}

//正宗  从后面
void buddleSort1(int array[], int len) {
    for (int i=0; i<len; i++) {
        for (int j=len-2; j>=i; j--) {
            int tmp1 = array[j];
            int tmp2 = array[j+1];
            if (tmp1 > tmp2) {
                swap(array, j, j+1);
            }
        }
    }
}

//改良  增加一个是否交换的标记
void buddleSort2(int array[], int len) {
    bool bSwaped = YES;
    for (int i=0; i<len && bSwaped; i++) {
        bSwaped = NO;
        for (int j=len-2; j>=i; j--) {
            int tmp1 = array[j];
            int tmp2 = array[j+1];
            if (tmp1 > tmp2) {
                bSwaped = YES;
                swap(array, j, j+1);
            }
        }
    }
}

//**********************选择排序***********************



#pragma mark - 类扩展
@interface CQHSortViewController ()

@end

#pragma mark - 类实现
@implementation CQHSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)bubbleSort:(UIButton *)sender {
    
    int array[] = {5,4,7,1,23,49,6,3,2};
//    buddleSort0(array, 9);
//    buddleSort1(array, 9);
    buddleSort2(array, 9);
    
    NSLog(@"%s", __FUNCTION__);
}


@end
