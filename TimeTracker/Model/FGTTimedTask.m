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
                    hourlyRate: (double)hourlyRate
                      hrWorked: (double)hrWorked
                   
{
    self = [super init];
    if(self){
        _client = client;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hrWorked = hrWorked;
 
    }
    return self;
};

//Getter for "total" readonly property = computed property in Swift
- (double)total{
    return _hourlyRate * _hrWorked;
};


@end
