//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by Paola Mariselli on 12/17/13.
//  Copyright (c) 2013 Paola Mariselli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
