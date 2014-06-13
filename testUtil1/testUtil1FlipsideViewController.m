//  testUtil1FlipsideViewController.m
//  testUtil1

#import "testUtil1FlipsideViewController.h"

@interface testUtil1FlipsideViewController ()
@end

@implementation testUtil1FlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

// 戻る
- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

//Main View Controllerシーンから移動してくる前に現在の設定値を受け取る
- (void)setConfigureDic:(NSMutableDictionary *)configDictionary
{
    //設定値を受け取る辞書の準備
    if(_theConfigDictionary == nil){
        _theConfigDictionary = [NSMutableDictionary dictionaryWithCapacity:2];
    }
    //引数で受け取った辞書の値を引き継ぐ
    //[_theConfigDictionary addEntriesFromDictionary:configDictionary];
    _theConfigDictionary = configDictionary;
}

- (void)configureView
{
    _messageInput.text  = _theConfigDictionary[@"message"];
    _dateInput.date     = _theConfigDictionary[@"date"];
}

//画面タップでキーボードを下げる
- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    [self.view endEditing:YES];
}
@end
