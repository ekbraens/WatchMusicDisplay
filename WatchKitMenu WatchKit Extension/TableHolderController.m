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

// connected to the only table in storyboard, dont forget
@property (weak, nonatomic) IBOutlet WKInterfaceTable *trackTable;
// no where else to put this now,
// ideally this information would be stored on the phone
// and the watch would ask for the information when needed
@property (nonatomic, strong) NSMutableArray * trackList;

@end

@implementation TableHolderController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
        
        // decided to pass in an array to the mutable array
        // change of pace, good to know both ways to do something
        NSArray * tRAlbum = [[NSArray alloc] initWithObjects:@"Coffe", @"Novella Ella Ella", @"Anywhere But Here", @"Name That Thing", @"Songs About Boats", @"Long Division", nil];
        self.trackList = [[NSMutableArray alloc] initWithArray:tRAlbum];
        
        // populate the table with array of song titles
        [self configureTableWithData:tRAlbum];
        
        NSLog(@"%@ initWithContext", self);
    }
    return self;
}

// method from the watchkit programming guide for table configuration
// works well, I tweak it alittle to fit my needs
- (void)configureTableWithData:(NSArray*)dataObjects{
    // make sure both the custom class and identifier is declared in storyboard!
    [self.trackTable setNumberOfRows:[dataObjects count] withRowType:@"TracklistController"];
    for (NSInteger i = 0; i < self.trackTable.numberOfRows; i++)
    {
        //table row controller I created to display custom data and labels
        TracklistController* theRow = [self.trackTable rowControllerAtIndex:i];
        
        // dont need a special class to display data
        //MyDataObject* dataObj = [dataObjects objectAtIndex:i];
        
        // needed to format the i,
        //for track numbers to display in a label within storyboard
        NSString * trackNumber = [NSString stringWithFormat:@"%ld", i + 1];
        [theRow.numberLabel setText:trackNumber];
        // display strings that are contained in the song title array
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
