//
//  InterfaceController.m
//  WatchKitMenu WatchKit Extension
//
//  Created by New on 11/28/14.
//  Copyright (c) 2014 New. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

// for interaction with the menu, tells whether the "song" is playing
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *statusLabel;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

// corresponds with the "play" button on the menu
- (IBAction)playPressed
{
    [self.statusLabel setText:@"-Playing-"];
}
// corresponds with the "pause" button on the menu
- (IBAction)pausePressed
{
    [self.statusLabel setText:@"-Paused-"];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



