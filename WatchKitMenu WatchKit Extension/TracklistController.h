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

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *numberLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;

@end
