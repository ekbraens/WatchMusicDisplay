//
//  InterfaceController.m
//  WatchKitMenu WatchKit Extension
//
//  Created by New on 11/28/14.
//  Copyright (c) 2014 New. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

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

- (IBAction)playPressed
{
    [self.statusLabel setText:@"-Playing-"];
}

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



