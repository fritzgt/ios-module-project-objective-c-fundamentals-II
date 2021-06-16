//
//  FGTTimedTrackerViewModel.h
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

//Import FGTTimedTask into the h file
@class FGTTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTrackerViewModel : NSObject

//Properties
//Array of type FGTTimedTask objects
@property (readonly, nonatomic) NSArray <FGTTimedTask *> *timedTasks;


//Methods
- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                       rate:(NSString *)rate
                      hours:(NSString *)hours;

@end

NS_ASSUME_NONNULL_END
