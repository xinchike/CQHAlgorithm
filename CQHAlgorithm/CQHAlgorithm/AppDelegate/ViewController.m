//
//  ViewController.m
//  CQHAlgorithm
//
//  Created by cqh on 2020/11/13.
//

#import "ViewController.h"
#import "CQHMainPageTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CQHMainPageTableViewController *vc = [[CQHMainPageTableViewController alloc] init];
    [self pushViewController:vc animated:YES];
}


@end
