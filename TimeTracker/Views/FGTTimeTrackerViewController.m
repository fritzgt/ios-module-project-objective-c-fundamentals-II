//
//  FGTTimeTrackerViewController.m
//  TimeTracker
//
//  Created by FGT MAC on 6/15/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "FGTTimeTrackerViewController.h"
#import "FGTTimedTrackerViewModel.h"
#import "FGTTimedTask.h"

@interface FGTTimeTrackerViewController ()

@property (weak, nonatomic) IBOutlet UITextField *clientNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *summaryLabel;
@property (weak, nonatomic) IBOutlet UITextField *rateLabel;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation FGTTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewModel = [[FGTTimedTrackerViewModel alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
};

- (FGTTimedTrackerViewModel *)viewModel{
    if (!_viewModel){
        _viewModel = [[FGTTimedTrackerViewModel alloc] init];
    }
    return  _viewModel;
}

- (IBAction)logTime:(UIButton *)sender
{
    
    [self.viewModel createTimedTaskWith: [self.clientNameLabel text]
                            summary:[self.summaryLabel text]
                               rate:[self.rateLabel text]
                              hours:[self.timeWorkedLabel text]];
    
    [self.tableView reloadData];
    
    [self clearFilds];
};

- (void)clearFilds{
    self.clientNameLabel.text = @"";
    self.summaryLabel.text = @"";
    self.rateLabel.text = @"";
    self.timeWorkedLabel.text = @"";
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"TimedCell" forIndexPath:indexPath];
    
    FGTTimedTask *task = self.viewModel.timedTasks[indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f",task.total];
    
    return cell;
};

@end
