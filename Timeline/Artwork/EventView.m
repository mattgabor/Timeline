//
//  EventView.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "EventView.h"

@implementation EventView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [VTimeline drawRightItemWithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"The Colorist"];
}

@end
