//
//  AxeClientConfig.h
//  AxeCalendarTool
//
//  Created by GiantAxe on 17/11/22.
//  Copyright © 2017年 GiantAxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AxeClientConfig : NSObject

@property (nonatomic, strong) NSString *windowBgColor;

+ (instancetype)shareClientConfig;

@end
