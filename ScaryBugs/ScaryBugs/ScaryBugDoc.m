//
//  ScaryBugDoc.m
//  ScaryBugs
//
//  Created by Paola Mariselli on 12/17/13.
//  Copyright (c) 2013 Paola Mariselli. All rights reserved.
//

#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugDoc

- (id)initWithTitle:(NSString *)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
