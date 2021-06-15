//
//  FGTTimedTask.m
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "FGTTimedTask.h"

@implementation FGTTimedTask

- (instancetype)initWithClient:(NSString *) client
                    summary:(NSString *)summary
                    hourlyRate: (NSNumber *)hourlyRate
                      hrWorked: (NSNumber *)hrWorked
                         total: (NSNumber *)total
{
    self = [super init];
    if(self){
        _client = client;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hrWorked = hrWorked;
        _total = total;
    }
    return self;
};



@end
