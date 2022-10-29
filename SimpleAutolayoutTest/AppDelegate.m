//
//  AppDelegate.m
//  SimpleAutolayoutTest
//
//  Created by Benjamin Johnson on 22/10/22.
//  Copyright © 2022 Benjamin Johnson. All rights reserved.
//

#import "AppDelegate.h"
#import "AppWindow.h"
#import "BackgroundColorView.h"


@interface AppDelegate ()

@property (nonatomic, strong) AppWindow *window;

@end

@implementation AppDelegate
{
    NSView *pinTopRightView;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.window = [[AppWindow alloc]              // create the window
               initWithContentRect: NSMakeRect(100.0, 350.0, 400.0, 400.0)
                         styleMask:NSTitledWindowMask
                                  |NSClosableWindowMask
                                  |NSMiniaturizableWindowMask
                                  |NSResizableWindowMask
                           backing:NSBackingStoreBuffered
                             defer:NO ];

    [self.window setTitle:@"Simple constraint test"];
    [self.window makeKeyAndOrderFront:nil];

    NSView *windowView = [self.window contentView];

    pinTopRightView = [[BackgroundColorView alloc] init];
    pinTopRightView.translatesAutoresizingMaskIntoConstraints = NO;

    self.window.pinView = pinTopRightView;
    [windowView addSubview:pinTopRightView];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:pinTopRightView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:pinTopRightView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinTopRightView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinTopRightView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];

    [windowView addConstraints:@[rightConstraint, topConstraint, widthConstraint, heightConstraint]];
}

@end
