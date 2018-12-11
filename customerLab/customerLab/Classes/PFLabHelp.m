//
//  test.m
//  customerLab
//
//  Created by spf on 2018/12/11.
//  Copyright © 2018年 spf. All rights reserved.
//

#import "PFLabHelp.h"

@implementation PFLabHelp

#pragma mark 计算文本尺寸(单行文本)
+ (CGSize)autoSizeOfSignelLineText:(NSString *)text font:(UIFont *)font
{
    CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName:font}];
    return textSize;
}


#pragma mark 计算UIlabel尺寸(单行文本)
+ (CGSize)autoSizeOfSignelLineLabel:(UILabel *)label
{
    CGSize textSize = [label.text sizeWithAttributes:@{NSFontAttributeName:label.font}];
    return textSize;
}

#pragma mark 计算UIlabel尺寸(多行文本)
+ (CGSize)autoSizeOfMultipleLineLabel:(UILabel *)label maxWith:(CGFloat)maxWith
{
    CGSize textSize = [label.text boundingRectWithSize:CGSizeMake(maxWith, FLT_MAX)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                            attributes:@{NSFontAttributeName:label.font}
                                               context:nil].size;
    return textSize;
}



@end
