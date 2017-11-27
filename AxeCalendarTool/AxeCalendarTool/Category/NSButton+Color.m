//
//  NSButton+Color.m
//  HSSecuritiesForMac
//
//  Created by linhongbo on 16/9/12.
//  Copyright © 2016年 linhongbo. All rights reserved.
//

#import "NSButton+Color.h"

@implementation NSButton (Color)

- (void)setTextColor:(NSColor *)color
{
    NSMutableAttributedString *colorTitle = [[NSMutableAttributedString alloc] initWithAttributedString:         [self attributedTitle]];
    NSRange titleRange = NSMakeRange(0, [colorTitle length]);
    [colorTitle addAttribute:NSForegroundColorAttributeName value:color range:titleRange];
    
    [self setAttributedTitle:colorTitle];
}

- (void)setBackGroundColor:(NSColor *)color
{
    NSButtonCell *cell = [NSButtonCell new];
    cell.backgroundColor = color;
    [self setCell:cell];
}

@end
