//
//  EventView.h
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTimeline.h"
#import "VTimelineCircle.h"

@interface EventViewCircle : UIView

@property (nonatomic, strong) NSNumber *stageNum;

//@property (nonatomic, strong) NSNumber *startTime;
@property (nonatomic, strong) NSNumber *durationNum;

@end