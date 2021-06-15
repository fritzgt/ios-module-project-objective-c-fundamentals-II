//
//  FGTTimedTask.h
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) NSNumber *hourlyRate;
@property (nonatomic) NSNumber *hrWorked;
@property (readonly, nonatomic) NSNumber *total;

- (instancetype)initWithClient:(NSString *) client
                    summary:(NSString *)summary
                    hourlyRate: (NSNumber *)hourlyRate
                      hrWorked: (NSNumber *)hrWorked
                         total: (NSNumber *)total;

@end

NS_ASSUME_NONNULL_END
