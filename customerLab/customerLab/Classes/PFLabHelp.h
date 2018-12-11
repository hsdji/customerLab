//
//  test.h
//  customerLab
//
//  Created by spf on 2018/12/11.
//  Copyright © 2018年 spf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface PFLabHelp : NSObject

/**
 根据文本和字体计算所需要的大小

 @param text content
 @param font 字体
 @return CGsize
 */
+ (CGSize)autoSizeOfSignelLineText:(NSString *)text font:(UIFont *)font;




/**
 一行内容使用

 @param label 需要计算的控件
 @return CGSize
 */
+ (CGSize)autoSizeOfSignelLineLabel:(UILabel *)label;


/**
 根据内容计算行高，需要指定最大宽度

 @param label 容器
 @param maxWith 最大宽
 @return CGSize
 */
+ (CGSize)autoSizeOfMultipleLineLabel:(UILabel *)label maxWith:(CGFloat)maxWith;
@end


