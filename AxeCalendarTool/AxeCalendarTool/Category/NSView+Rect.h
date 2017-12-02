//
//  NSView+Rect.h
//  HSSecuritiesForMac
//
//  Created by linhongbo on 16/8/29.
//  Copyright © 2016年 linhongbo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSView (Rect)

@property (assign, nonatomic) CGFloat    MaxX;
@property (assign, nonatomic) CGFloat    MinX;
@property (assign, nonatomic) CGFloat    MaxY;
@property (assign, nonatomic) CGFloat    MinY;


@property (assign, nonatomic) CGFloat    CenterFrameX;
@property (assign, nonatomic) CGFloat    CenterFrameY;
@property (assign, nonatomic) CGFloat    CenterBoundsX;
@property (assign, nonatomic) CGFloat    CenterBoundsY;


@property (assign, nonatomic) CGFloat    Width;
@property (assign, nonatomic) CGFloat    Height;
@property (assign, nonatomic) CGSize     Size;
@property (assign, nonatomic) CGPoint    Origin;

@end
