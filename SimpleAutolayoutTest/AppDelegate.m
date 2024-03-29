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
    [self createPinTopView];
    [self createTopLeftPinView];
    [self createBottomLeftPinView];
    [self createBottomRightPinView];
    [self createCenterPinView];
    [self createLeftCenterPinView];
    [self createRightCenterPinView];
    [self createTopCenterPinView];
    [self createBottomCenterPinView];
}

-(void)createPinTopView
{
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

-(void)createTopLeftPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];

    [windowView addConstraints:@[leftConstraint, topConstraint, widthConstraint, heightConstraint]];
}

-(void)createBottomLeftPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];

    [windowView addConstraints:@[leftConstraint, bottomConstraint, widthConstraint, heightConstraint]];
}

-(void)createBottomRightPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];

    [windowView addConstraints:@[rightConstraint, bottomConstraint, widthConstraint, heightConstraint]];
}

-(void)createCenterPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];

    [windowView addConstraints:@[centerYConstraint, centerXConstraint, widthConstraint, heightConstraint]];
}

-(void)createLeftCenterPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:50];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];

    [windowView addConstraints:@[leftConstraint, centerYConstraint, widthConstraint, heightConstraint]];
}

-(void)createRightCenterPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-50];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];

    [windowView addConstraints:@[rightConstraint, centerYConstraint, widthConstraint, heightConstraint]];
}

-(void)createTopCenterPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeTop multiplier:1.0 constant:50];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];

    [windowView addConstraints:@[topConstraint, centerXConstraint, widthConstraint, heightConstraint]];
}

-(void)createBottomCenterPinView
{
    NSView *windowView = [self.window contentView];

    BackgroundColorView *pinView = [[BackgroundColorView alloc] init];
    pinView.translatesAutoresizingMaskIntoConstraints = NO;

    [windowView addSubview:pinView];
    
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-50];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:pinView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:windowView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];

    [windowView addConstraints:@[bottomConstraint, centerXConstraint, widthConstraint, heightConstraint]];
}


@end
