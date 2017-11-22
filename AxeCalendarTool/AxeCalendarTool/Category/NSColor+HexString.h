//
//  NSColor+HexString.h
//  HSSecuritiesForMac
//
//  Created by linhongbo on 16/8/29.
//  Copyright © 2016年 linhongbo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (HexString)

+ (NSColor *) colorWithHexString: (NSString *) hexString;
+ (NSColor *) colorWithHexString: (NSString *)color withAlpha:(CGFloat)alpha;

+ (NSString *)colorToHexString:(NSColor *)color;

@end
