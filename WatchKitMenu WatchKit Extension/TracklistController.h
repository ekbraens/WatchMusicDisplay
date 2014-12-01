//
//  TracklistController.h
//  WatchKitMenu
//
//  Created by New on 11/28/14.
//  Copyright (c) 2014 New. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface TracklistController : NSObject

// need to be protected to interact with the interface controller
// that holds the table
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *numberLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;

@end
