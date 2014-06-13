//  testUtil1FlipsideViewController.h
//  testUtil1

#import <UIKit/UIKit.h>

@class testUtil1FlipsideViewController;

//プロトコルとデリゲートメソッドを宣言する
@protocol testUtil1FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(testUtil1FlipsideViewController *)controller;
@end

@interface testUtil1FlipsideViewController : UIViewController

// delegateプロパティの宣言
@property (weak, nonatomic) id <testUtil1FlipsideViewControllerDelegate> delegate;

    // テンポラリな設定用の辞書
    // - 設定用の情報
    @property (weak, nonatomic) NSMutableDictionary *theConfigDictionary;

    // UI部品と接続してプロパティ宣言しておく
    @property (weak, nonatomic) IBOutlet UITextField *messageInput;
    @property (weak, nonatomic) IBOutlet UIDatePicker *dateInput;

    // データの受け渡しに使うメソッド
    - (void)setConfigureDic:(NSMutableDictionary *)configDictionary;

    //
    - (void)configureView;

    //
    - (IBAction)done:(id)sender;

    //
    - (IBAction)tapView:(UITapGestureRecognizer *)sender;
@end
