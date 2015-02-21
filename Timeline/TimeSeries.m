//
//  TimeSeries.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "TimeSeries.h"

@implementation TimeSeries

- (id) initWithEvents:(NSArray*)eventArray {
    
    //NSDictionary *dict1 = @{@"artist": @"The Colorist", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424568778], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424569778]};
    //NSDictionary *dict2 = @{@"artist": @"The Colorist 2", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424569779], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424570878]};
    //NSArray *test = @[dict1, dict2]; //replace all eventArray with test
    
    NSDate * startDate = [[NSDate alloc] initWithTimeIntervalSince1970:1524567778];
    NSDate * endDate = [[NSDate alloc] initWithTimeIntervalSince1970:0];
    
    for (NSDictionary *tempDict in eventArray) {
        startDate = [startDate earlierDate:tempDict[@"start"]];
        endDate = [endDate laterDate:tempDict[@"end"]];
    }
    
    NSTimeInterval secondsBetween = [endDate timeIntervalSinceDate:startDate];
    
    NSMutableArray * events = [[NSMutableArray alloc] initWithCapacity:secondsBetween]; //Each index value represents a minute
    
    for (int j = 0; j < secondsBetween; j++) {
        events[j] = @{};
    }
    
    
    for (NSDictionary *tmpDict in eventArray) {
        NSTimeInterval secondsBetween = [tmpDict[@"start"] timeIntervalSinceDate:startDate];
        events[(NSInteger) secondsBetween] = tmpDict[@"start"];
    }
    
    return self;
}

@end