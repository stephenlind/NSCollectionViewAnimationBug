//
//  AppDelegate.m
//  collectionViewAnimation
//
//  Created by Stephen Lind on 3/11/13.
//  Copyright (c) 2013 Stephen Lind. All rights reserved.
//

#import "AppDelegate.h"

static const double kMaxSize = 100;

static NSTimeInterval originalAnimationDuration = 0;

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSNumber *n = [self.collectionView valueForKey:@"_animationDuration"];
    originalAnimationDuration = [n doubleValue];
    
    [self reloadArray];
    [self hackChanged:nil];
    [self sizeChanged:nil];
}

- (IBAction)sizeChanged:(id)sender {
    double ratio = [self.slider doubleValue] / 50;
    
    double h = kMaxSize * ratio;
    double w = kMaxSize * ratio;
    
    [self.collectionView setMaxItemSize:NSMakeSize(w, h)];
    [self.collectionView setMinItemSize:NSMakeSize(w, h)];
}

- (void)reloadArray {
    while ([[self.arrayController arrangedObjects] count]) {
        [self.arrayController removeObjectAtArrangedObjectIndex:0];
    }
    
    for (int i=0; i<100; i++) {
        [self.arrayController addObject:[NSString stringWithFormat:@"item %d", i]];
    }
}

- (IBAction)hackChanged:(id)sender {
    if ([self.hackButton state] == NSOnState) {
        [self.collectionView setValue:@(0) forKey:@"_animationDuration"];
    } else {
        [self.collectionView setValue:[NSNumber numberWithDouble:originalAnimationDuration] forKey:@"_animationDuration"];
    }
}

@end
