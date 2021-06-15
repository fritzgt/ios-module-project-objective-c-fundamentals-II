//
//  FGTTimedTrackerViewModel.m
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "FGTTimedTrackerViewModel.h"
//Import FGTTimedTask
#import "FGTTimedTask.h"

@implementation FGTTimedTrackerViewModel

-(instancetype)initWithTimedTask:(NSMutableArray *)timedTasks  {
    self = [super init];
    if (self){
        _timedTasks = timedTasks;
    }
    return self;
};


- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                       rate:(NSNumber *)rate
                      hours:(NSNumber *)hours{
    //1.Create new instace of the array
    FGTTimedTask *timedTask = [[FGTTimedTask alloc]
                               initWithClient:client
                               summary:summary
                               hourlyRate:rate
                               hrWorked:hours];
    
    //2.add objects to array
    [_timedTasks addObject:timedTask];
};


@end
