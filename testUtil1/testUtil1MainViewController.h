//  testUtil1MainViewController.h
//  testUtil1

#import "testUtil1FlipsideViewController.h"

@interface testUtil1MainViewController : UIViewController <testUtil1FlipsideViewControllerDelegate>

// 設定値
@property (strong, nonatomic) NSMutableDictionary *myDictionary;

// 表示
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@end
