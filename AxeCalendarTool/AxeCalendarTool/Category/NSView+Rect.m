//
//  NSView+Rect.m
//  HSSecuritiesForMac
//
//  Created by linhongbo on 16/8/29.
//  Copyright © 2016年 linhongbo. All rights reserved.
//

#import "NSView+Rect.h"

@implementation NSView (Rect)


- (CGFloat)MaxY
{
    return CGRectGetMaxY(self.frame);
}

- (void)setMaxY:(CGFloat)MaxY
{
    CGPoint origin = self.Origin;
    origin.y = MaxY - self.Height;
    
    [self setFrameOrigin:origin];
}

- (CGFloat)MinY
{
    return CGRectGetMinY(self.frame);
}

- (void)setMinY:(CGFloat)MinY
{
    CGPoint origin = self.Origin;
    origin.y = MinY;
    
    [self setFrameOrigin:origin];
}

- (CGFloat)MaxX
{
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxX:(CGFloat)MaxX
{
    CGPoint origin = self.Origin;
    origin.x = MaxX - self.Width;
    
    [self setFrameOrigin:origin];
}

- (CGFloat)MinX
{
    return CGRectGetMinX(self.frame);
}

- (void)setMinX:(CGFloat)MinX
{
    CGPoint origin = self.Origin;
    origin.x = MinX;
    
    [self setFrameOrigin:origin];
}

- (CGFloat)CenterFrameX
{
    return CGRectGetMidX(self.frame);
}

- (void)setCenterFrameX:(CGFloat)CenterFrameX
{
    CGPoint origin = self.Origin;
    origin.x = CenterFrameX - self.Width/2;
    
    [self setFrameOrigin:origin];
}

- (CGFloat)CenterFrameY
{
    return CGRectGetMidY(self.frame);
}

- (void)setCenterFrameY:(CGFloat)CenterFrameY
{
    CGPoint origin = self.Origin;
    origin.y = CenterFrameY - self.Height/2;
}

- (CGFloat)CenterBoundsX
{
    CGPoint origin = self.bounds.origin;
    return origin.x + self.Width/2;
}

- (void)setCenterBoundsX:(CGFloat)CenterBoundsX
{
    CGPoint origin = self.bounds.origin;
    origin.x = CenterBoundsX - self.Width/2;
    
    [self setBoundsOrigin:origin];
}

- (CGFloat)CenterBoundsY
{
    CGPoint origin = self.bounds.origin;
    return origin.y + self.Height/2;
}

- (void)setCenterBoundsY:(CGFloat)CenterBoundsY
{
    CGPoint origin = self.bounds.origin;
    origin.y = CenterBoundsY - self.Height/2;
    
    [self setBoundsOrigin:origin];
}

- (CGFloat)Width
{
    return CGRectGetWidth(self.frame);
}

- (void)setWidth:(CGFloat)Width
{
    CGSize size = self.Size;
    size.width = Width;
    
    [self setFrameSize:size];
}

- (CGFloat)Height
{
    return CGRectGetHeight(self.frame);
}

- (void)setHeight:(CGFloat)Height
{
    CGSize size = self.Size;
    size.height = Height;
    
    [self setFrameSize:size];
}

- (CGSize)Size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)Size
{
    [self setFrameSize:Size];
}

- (CGPoint)Origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)Origin
{
    [self setFrameOrigin:Origin];
}

@end


