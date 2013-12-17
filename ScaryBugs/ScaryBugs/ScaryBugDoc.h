//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by Paola Mariselli on 12/17/13.
//  Copyright (c) 2013 Paola Mariselli. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
@property (strong) NSImage *thumbImage;
@property (strong) NSImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage;

@end
