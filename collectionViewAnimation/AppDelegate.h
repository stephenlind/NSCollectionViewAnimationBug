//
//  AppDelegate.h
//  collectionViewAnimation
//
//  Created by Stephen Lind on 3/11/13.
//  Copyright (c) 2013 Stephen Lind. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSArrayController *arrayController;
@property (assign) IBOutlet NSSlider *slider;
@property (assign) IBOutlet NSButton *hackButton;

@property (assign) IBOutlet NSCollectionView *collectionView;

- (IBAction)sizeChanged:(id)sender;
- (IBAction)hackChanged:(id)sender;

@end
