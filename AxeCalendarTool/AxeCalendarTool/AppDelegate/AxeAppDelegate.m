//
//  AxeAppDelegate.m
//  AxeCalendarTool
//
//  Created by GiantAxe on 17/11/20.
//  Copyright © 2017年 GiantAxe. All rights reserved.
//

#import "AxeAppDelegate.h"
#import "AxePopoverVC.h"

@interface AxeAppDelegate ()

/** 背景view */
@property (weak) IBOutlet NSView *bgView;
@property (weak) IBOutlet NSButton *lastBtn;
@property (weak) IBOutlet NSButton *nextBtn;

@property (nonatomic, strong) NSStatusItem *statusItem;
@property (nonatomic, strong) NSPopover *popover;
@property (nonatomic, strong) AxePopoverVC *popoverVC;

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
    
    self.bgView.wantsLayer = YES;
    self.bgView.layer.backgroundColor = [NSColor colorWithRed:250/255.0 green:177/255.0 blue:45/255.0 alpha:1].CGColor;
    //[NSColor colorWithHexString:@"#121212"].CGColor;

    _popover = [[NSPopover alloc] init];
    _popover.behavior = NSPopoverBehaviorApplicationDefined;
    _popover.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantDark];
    _popover.contentViewController = self.popoverVC;
    
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    NSStatusItem *statusItem = [statusBar statusItemWithLength:NSSquareStatusItemLength];
    [statusItem.button setTarget:self];
    [statusItem.button setAction:@selector(statusItemClick:)];
    statusItem.button.image = [NSImage imageNamed:@"Koala_24px"];
    self.statusItem = statusItem;
    
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
    NSLog(@"app退出");
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    [statusBar removeStatusItem:self.statusItem];
}

// ===============================================================
//                          life cycle
// ===============================================================

#pragma mark - life cycle

+ (void)initialize {

}

- (id)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// ===============================================================
//                          lazy
// ===============================================================

#pragma mark - lazy 

- (AxePopoverVC *)popoverVC
{
    if (!_popoverVC) {
        _popoverVC = [[AxePopoverVC alloc] initWithNibName:@"AxePopoverVC" bundle:nil];
    }
    return _popoverVC;
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
    AxeClientConfig *clientConfig = [AxeClientConfig shareClientConfig];
    [_window setBackgroundColor:[NSColor colorWithHexString:clientConfig.windowBgColor]];

}

// ===============================================================
//                          事件处理
// ===============================================================

#pragma mark - 事件处理

- (void)statusItemClick:(NSStatusBarButton *)btn
{
    AxeLog(@"coming");
//    [[NSRunningApplication currentApplication] activateWithOptions:NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps];
    [_popover showRelativeToRect:btn.bounds ofView:btn preferredEdge:NSRectEdgeMaxY];
}

- (void)screenIsLocked:(NSNotification *)noti
{
    NSLog(@"屏幕被锁");
}

- (void)screenIsUnlocked:(NSNotification *)noti
{
    NSLog(@"屏幕解锁");
}

@end
