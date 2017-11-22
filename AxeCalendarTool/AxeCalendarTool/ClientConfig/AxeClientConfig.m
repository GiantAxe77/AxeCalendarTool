//
//  AxeClientConfig.m
//  AxeCalendarTool
//
//  Created by GiantAxe on 17/11/22.
//  Copyright © 2017年 GiantAxe. All rights reserved.
//

#import "AxeClientConfig.h"

@implementation AxeClientConfig

+ (instancetype)shareClientConfig
{
    static AxeClientConfig *shareConfig = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!shareConfig) {
            shareConfig = [[super allocWithZone:NULL] init];
        }
        shareConfig.windowBgColor = @"#151a24";
    });
    return shareConfig;
}

@end
