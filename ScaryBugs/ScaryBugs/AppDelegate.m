//
//  AppDelegate.m
//  ScaryBugs
//
//  Created by Paola Mariselli on 12/17/13.
//  Copyright (c) 2013 Paola Mariselli. All rights reserved.
//

#import "AppDelegate.h"
#include "MasterViewController.h"
#import "ScaryBugDoc.h"

@interface AppDelegate()
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    // 1. Create the master View Controller
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    // Setup sample data
    ScaryBugDoc *bug1 = [[ScaryBugDoc alloc] initWithTitle:@"Potato Bug" rating: 4 thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
    ScaryBugDoc *bug2 = [[ScaryBugDoc alloc] initWithTitle:@"House Centipede" rating: 3 thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"] fullImage:[NSImage imageNamed:@"centipede.jpg"]];
    ScaryBugDoc *bug3 = [[ScaryBugDoc alloc] initWithTitle:@"Wolf Spider" rating: 5 thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
    ScaryBugDoc *bug4 = [[ScaryBugDoc alloc] initWithTitle:@"Lady Bug" rating: 1 thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"] fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
    
    self.masterViewController.bugs = bugs;
    
    // 2. Add the view controller to the Window's content view
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}

@end
