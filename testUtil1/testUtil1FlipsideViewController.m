//
//  testUtil1FlipsideViewController.m
//  testUtil1
//
//  Created by 松久浩伸 on 2014/06/11.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "testUtil1FlipsideViewController.h"

@interface testUtil1FlipsideViewController ()

@end

@implementation testUtil1FlipsideViewController

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

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
