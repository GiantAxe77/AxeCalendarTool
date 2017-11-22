//
//  AxeAppDelegate.m
//  AxeCalendarTool
//
//  Created by GiantAxe on 17/11/20.
//  Copyright © 2017年 GiantAxe. All rights reserved.
//

#import "AxeAppDelegate.h"

@interface AxeAppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AxeAppDelegate

// ===============================================================
//                          AppDelegate
// ===============================================================

#pragma mark - AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    [self setupMainWindow];
    
    // 锁屏通知
    [[NSDistributedNotificationCenter defaultCenter] addObserver:self selector:@selector(screenIsLocked:) name:@"com.apple.screenIsLocked" object:nil];
    // 屏幕解锁通知
    [[NSDistributedNotificationCenter defaultCenter] addObserver:self selector:@selector(screenIsUnlocked:) name:@"com.apple.screenIsUnlocked" object:nil];
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// ===============================================================
//                          setup
// ===============================================================

#pragma mark - setup

- (void)setupMainWindow
{
    _window.styleMask |= NSTitledWindowMask;
    _window.toolbar.visible = YES;
    _window.titleVisibility = YES;
//    _window.titlebarAppearsTransparent = YES;
    [_window setBackgroundColor:[NSColor yellowColor]];
    
}

// ===============================================================
//                          事件处理
// ===============================================================

#pragma mark - 事件处理

- (void)screenIsLocked:(NSNotification *)noti
{
    NSLog(@"屏幕被锁");
}

- (void)screenIsUnlocked:(NSNotification *)noti
{
    NSLog(@"屏幕解锁");
}

@end
