//
//  CQHMainPageTableViewController.m
//  LockDemo
//
//  Created by cqh on 2019/5/20.
//  Copyright © 2019年 cqh. All rights reserved.
//

#import "CQHMainPageTableViewController.h"

@interface CQHMainPageTableViewController ()

@end

@implementation CQHMainPageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"算法";
}

-(void)configCells {
    [self addCell:@"排序算法" className:@"CQHSortViewController"];
}
@end
