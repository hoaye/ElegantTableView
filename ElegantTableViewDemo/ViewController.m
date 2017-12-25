//
//  ViewController.m
//  ElegantTableViewDemo
//
//  Created by YJHou on 2017/7/3.
//  Copyright © 2017年 侯跃军. All rights reserved.
//

#import "ViewController.h"
#import "ElegantTableViewGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *dataSources = @[@"你", @"我", @"他", @"1", @"2", @"3"];
    UITableView *tableView = [[ElegantTableViewGenerator shareInstance] createWithFrame:self.view.bounds titles:dataSources subTitles:nil rowHeight:44 didSelectRowBlock:^(UITableView *tableView, NSIndexPath *indexPath) {
        NSLog(@"点击TableView-->%ld", (long)indexPath.row);
    } didScrollBlock:^(UIScrollView *tableView, CGPoint contentOffset) {
        NSLog(@"滚动TableView-->%@", NSStringFromCGPoint(contentOffset));
    }];
    
    [self.view addSubview:tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
