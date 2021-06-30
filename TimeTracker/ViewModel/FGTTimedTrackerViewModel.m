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



//Internal Property
@interface FGTTimedTrackerViewModel ()

@property (nonatomic) NSMutableArray <FGTTimedTask *> *internalTimedTasks;

@end


@implementation FGTTimedTrackerViewModel

-(instancetype)init  {
    self = [super init];
    if (self){
        _internalTimedTasks = [[NSMutableArray alloc] init];
    }
    return self;
};

- (NSArray<FGTTimedTask*> *)timedTasks {
    return [_internalTimedTasks copy];
}


- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                       rate:(NSString *)rate
                      hours:(NSString *)hours{
    

    //1.Create new instace of the array
    FGTTimedTask *timedTask = [[FGTTimedTask alloc]
                               initWithClient:client
                               summary:summary
                               hourlyRate: [rate doubleValue]
                               hrWorked:[hours doubleValue]];
    
    //2.add objects to array
    [self.internalTimedTasks addObject: timedTask];
};


@end
