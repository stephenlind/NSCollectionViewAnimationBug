//
//  CollectionItemView.m
//  collectionViewAnimation
//
//  Created by Stephen Lind on 3/11/13.
//  Copyright (c) 2013 Stephen Lind. All rights reserved.
//

#import "CollectionItemView.h"

@implementation CollectionItemView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSRect r = [self bounds];
    
    CGFloat midY = r.size.height / 2;
    CGFloat midX = r.size.width / 2;
    
    NSBezierPath *line = [NSBezierPath bezierPath];
    [line setLineWidth:r.size.height / 5];

    [line moveToPoint:NSMakePoint(midX, 0)];
    [line lineToPoint:NSMakePoint(midX, r.size.height)];
    [line stroke];

    [line moveToPoint:NSMakePoint(0, midY)];
    [line lineToPoint:NSMakePoint(r.size.width, midY)];
    [line stroke];
    
//    const CGFloat dotRadius = MIN(r.size.width, r.size.height) / 3;
//
//    NSRect dotRect = NSMakeRect(midX - dotRadius, midY - dotRadius, dotRadius * 2, dotRadius * 2);
//    
//    NSBezierPath *dot = [NSBezierPath bezierPathWithOvalInRect:dotRect];
//    [dot setLineWidth:1];
//    [dot stroke];
//    [dot fill];

}

@end
