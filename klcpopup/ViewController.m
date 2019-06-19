#import "ViewController.h"
#import <Masonry.h>
#import <KLCPopup.h>
#import "Model.h"

#import "ceshi.h"

#define YUViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]


@interface ViewController ()<ceshiDelegate>

@property (nonatomic, strong)KLCPopup *popup;
@end
//btn作用于控制器中使用，KLCPopup之后btn失效？？？？
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.text = @"ahhahahahahah";
    label.frame = CGRectMake(100, 200, 200, 40);
              
    [UIApplication sharedApplication].idleTimerDisabled = YES;
    [UIApplication sharedApplication].applicationIconBadgeNumber = 10;
    //self.view.backgroundColor = [UIColor redColor];
    self.popup.userInteractionEnabled = YES;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor yellowColor];
    YUViewBorderRadius(btn, 5, 2, [UIColor redColor]);
    //self.popup.userInteractionEnabled = YES;
    [btn addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self.view);
//        make.width.height.mas_equalTo(50);
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(self.view);
        make.right.lessThanOrEqualTo(self.view).offset(0);
        make.bottom.mas_equalTo(self.view).offset(-100).priorityLow();
        
        
        
        
    }];
    
    //[Model shareManger].name = @"111";
    Model *p1 = [[Model alloc] init];
      Model *p2 = [[Model alloc] init];
    NSLog(@"p1 = %@\n p2 = %@",p1,p2);
    
    
    
    
}

-(void)click1{
    //    BViewController *bvc = [BViewController new];
    //    bvc.delegate = self;
    ceshi *vc = [[ceshi alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    vc.backgroundColor = [UIColor whiteColor];
    vc.delegate = self;
    
   // self.popup.userInteractionEnabled = YES;
    //弹出视图的位置
    //KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCustom, KLCPopupVerticalLayoutCustom);
    //弹出弹框包括各种效果
   // self.popup = [KLCPopup popupWithContentView:vc];
        self.popup = [KLCPopup popupWithContentView:vc showType:KLCPopupShowTypeBounceInFromTop dismissType:KLCPopupDismissTypeBounceOutToBottom maskType:KLCPopupMaskTypeDimmed dismissOnBackgroundTouch:NO dismissOnContentTouch:NO];
    //弹出视图的背景的透明度
    //self.popup.dimmedMaskAlpha = 0.5;
    //[self.popup showWithLayout:layout duration:3];
    //[self.popup showWithLayout:layout];
    [self.popup show];
    //[self.popup showWithDuration:3];
    //弹出视图的位置
    //[self.popup showAtCenter:CGPointMake(50, 50) inView:self.view];
    //    BViewController *bvc = [BViewController new];
    //        bvc.delegate = self;
    //    [self presentViewController:bvc animated:YES completion:nil];
//     UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"请在iPhone的“设置-隐私-相机”选项中，允许访问你的相机" message:nil preferredStyle:UIAlertControllerStyleAlert];
//
//    UIAlertAction *action = [UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"点击了取消");
//    }];
//
//    [alertController addAction:action];
//
//   [self presentViewController:alertController animated:YES completion:nil];
  
    
   // [self.popup bringSubviewToFront:alertController.view];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"请在iPhone的“设置-隐私-相机”选项中，允许访问你的相机" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"好", nil];
//
//    [alert show];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//
//    });
//    //堵塞线程，建议放在子线程
//    [NSThread sleepForTimeInterval:2];
//
//    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(setTwoDigitStartD) userInfo:nil repeats:NO];
//
//    [self performSelector:@selector(sfsdfs) withObject:nil afterDelay:1];
    
    

    
}

//-(void)clickBtn:(BViewController *)bvc{
//    //[self.popup dismiss:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
-(void)taphah:(ceshi *)ceshi{
    
    //[self.popup dismiss:YES];
    //超出作用域
    //[KLCPopup dismissAllPopups];
    
    [self.popup dismissPresentingPopup];
}

@end

