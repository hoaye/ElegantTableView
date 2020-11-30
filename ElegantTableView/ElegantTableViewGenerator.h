//
//  ElegantTableViewGenerator.h
//  ElegantTableViewDemo
//
//  Created by YJHou on 2017/7/3.
//  Copyright © 2017年 houmanager. All rights reserved.
//  优雅的 创建简单的 TableView

/** 当前版本: 0.0.4 */

#import <UIKit/UIKit.h>

typedef void(^didSelectRowHandleBlock)(UITableView *tableView, NSIndexPath *indexPath);
typedef void(^didScrollHandleBlock)(UIScrollView *tableView, CGPoint contentOffset);

@interface ElegantTableViewGenerator : NSObject

@property (nonatomic, strong) UITableView *tableView;

/** 创建tableView生成器 */
+ (ElegantTableViewGenerator *)createWithFrame:(CGRect)frame
                          titles:(NSArray *)titles
                       subTitles:(NSArray *)subTitles
                       rowHeight:(CGFloat)rowHeight
               didSelectRowBlock:(didSelectRowHandleBlock)didSelectRowBlock
                  didScrollBlock:(didScrollHandleBlock)didScrollBlock;

@end
