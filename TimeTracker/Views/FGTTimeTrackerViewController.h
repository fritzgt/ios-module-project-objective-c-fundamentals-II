//
//  FGTTimeTrackerViewController.h
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FGTTimedTrackerViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimeTrackerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) FGTTimedTrackerViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
