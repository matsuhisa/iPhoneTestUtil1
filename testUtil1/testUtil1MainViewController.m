//
//  testUtil1MainViewController.m
//  testUtil1
//
//  Created by 松久浩伸 on 2014/06/11.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "testUtil1MainViewController.h"

@interface testUtil1MainViewController ()

@end

@implementation testUtil1MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(testUtil1FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
