//
//  TableHolderController.m
//  WatchKitMenu
//
//  Created by New on 11/28/14.
//  Copyright (c) 2014 New. All rights reserved.
//

#import "TracklistController.h"
#import "TableHolderController.h"

@interface TableHolderController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *trackTable;
@property (nonatomic, strong) NSMutableArray * trackList;

@end

@implementation TableHolderController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
        
        NSArray * tRAlbum = [[NSArray alloc] initWithObjects:@"Coffe", @"Novella Ella Ella", @"Anywhere But Here", @"Name That Thing", @"Songs About Boats", @"Long Division", nil];
        self.trackList = [[NSMutableArray alloc] initWithArray:tRAlbum];
        
        [self configureTableWithData:tRAlbum];
        
        NSLog(@"%@ initWithContext", self);
    }
    return self;
}

- (void)configureTableWithData:(NSArray*)dataObjects{
    [self.trackTable setNumberOfRows:[dataObjects count] withRowType:@"TracklistController"];
    for (NSInteger i = 0; i < self.trackTable.numberOfRows; i++)
    {
        TracklistController* theRow = [self.trackTable rowControllerAtIndex:i];
        //MyDataObject* dataObj = [dataObjects objectAtIndex:i];
        
        NSString * trackNumber = [NSString stringWithFormat:@"%ld", i + 1];
        
        [theRow.numberLabel setText:trackNumber];
        [theRow.titleLabel setText:dataObjects[i]];
    }
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
