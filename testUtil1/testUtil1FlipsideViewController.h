//
//  testUtil1FlipsideViewController.h
//  testUtil1
//
//  Created by 松久浩伸 on 2014/06/11.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@class testUtil1FlipsideViewController;

@protocol testUtil1FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(testUtil1FlipsideViewController *)controller;
@end

@interface testUtil1FlipsideViewController : UIViewController

@property (weak, nonatomic) id <testUtil1FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
