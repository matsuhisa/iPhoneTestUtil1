//  testUtil1MainViewController.m
//  testUtil1

#import "testUtil1MainViewController.h"

@interface testUtil1MainViewController ()
@end

@implementation testUtil1MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 初期値の処理
    _myDictionary = [NSMutableDictionary dictionaryWithCapacity:2];
    _myDictionary[@"message"] = @"こんにちは";
    _myDictionary[@"date"]    = [NSDate date];

    // 描画
    [self configureView];
}

// 設定辞書に基づいて画面を設定する
- (void)configureView
{
    _messageLabel.text = _myDictionary[@"message"];

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH:mm"];
    _dateLabel.text = [formatter stringFromDate:_myDictionary[@"date"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Flipside View

// 戻りのdelegateメソッド
- (void)flipsideViewControllerDidFinish:(testUtil1FlipsideViewController *)controller
{
    // 値を受け取る
    _myDictionary[@"message"] = controller.messageInput.text;
    _myDictionary[@"date"]    = controller.dateInput.date;

    // 描画
    [self configureView];

    // シーンを移行
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 送る
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        //移動先のFlipsideViewControllerクラスのデリゲート先になる
        [[segue destinationViewController] setDelegate:self];
        //移動先のFlipsideViewControllerクラスに設定辞書の値を受け渡す
        [[segue destinationViewController] setConfigureDic:_myDictionary];
    }
}

@end
