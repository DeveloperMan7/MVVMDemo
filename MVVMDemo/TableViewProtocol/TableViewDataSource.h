//
//  TableViewDataSource.h
//  MVVMDemo
//
//  Created by DevMan7 on 17/6/28.
//  Copyright (c) 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic,strong) NSArray *array;

@end
