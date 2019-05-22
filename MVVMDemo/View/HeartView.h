//
//  HeartView.h
//  MVVMDemo
//
//  Created by DevMan7 on 2019/5/21.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeartView : UIView
/**
 * 比率
 */
@property (nonatomic,assign) CGFloat rate;
/**
 * 填充的颜色
 */
@property (nonatomic,strong) UIColor *fillColor;
/**
 * 线条的颜色
 */
@property (nonatomic,strong) UIColor *strokeColor;
/**
 * 线条的宽度
 */
@property (nonatomic,assign) CGFloat lineWidth;

@end


NS_ASSUME_NONNULL_END
