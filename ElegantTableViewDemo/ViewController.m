//
//  ViewController.m
//  ElegantTableViewDemo
//
//  Created by YJHou on 2017/7/3.
//  Copyright © 2017年 MonkeyKing. All rights reserved.
//

#import "ViewController.h"
#import "ElegantTableViewGenerator.h"

@interface ViewController ()

@property (nonatomic, strong) ElegantTableViewGenerator *tableViewGenerator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"创建简单的TableView";
    
    
    NSArray *dataSources = @[@"你", @"我", @"他", @"1", @"2", @"3"];
    self.tableViewGenerator = [ElegantTableViewGenerator createWithFrame:self.view.bounds titles:dataSources subTitles:nil rowHeight:44 didSelectRowBlock:^(UITableView *tableView, NSIndexPath *indexPath) {
        NSLog(@"点击TableView-->%ld", (long)indexPath.row);
    } didScrollBlock:^(UIScrollView *tableView, CGPoint contentOffset) {
        NSLog(@"滚动TableView-->%@", NSStringFromCGPoint(contentOffset));
    }];
    
    [self.view addSubview:self.tableViewGenerator.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
