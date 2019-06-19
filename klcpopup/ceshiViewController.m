//
//  ceshiViewController.m
//  klcpopup
//
//  Created by yuweiyang on 2019/6/18.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import "ceshiViewController.h"
#import "ceshiTableViewCell.h"

@interface ceshiViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * systemTabview;
@end

@implementation ceshiViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.systemTabview];
}

-(UITableView *)systemTabview{
    
    if (_systemTabview == nil) {
        _systemTabview = [[UITableView alloc]initWithFrame:CGRectMake(0,0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
        [_systemTabview registerNib:[UINib nibWithNibName:@"ceshiTableViewCell" bundle:nil] forCellReuseIdentifier:[ceshiTableViewCell JXTSystemMsgCellReusableCellWithIdentifier]];
        _systemTabview.delegate = self;
        _systemTabview.dataSource = self;
        _systemTabview.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        _systemTabview.tableFooterView = [UIView new];
        _systemTabview.backgroundColor = [UIColor whiteColor];
        _systemTabview.estimatedRowHeight = 44.0f;//推测高度，必须有，可以随便写多少
        
        _systemTabview.rowHeight =UITableViewAutomaticDimension;//iOS8之后默认就是这个值，可以省略
        
    }
    return _systemTabview;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ceshiTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[ceshiTableViewCell JXTSystemMsgCellReusableCellWithIdentifier] forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.label = @"sdjfkjfksjfksjfksjdfskfjskfjsfskfjskfjskf说的很对就哈萨克的海口市第十四大会上空间哈空间电话卡时间的话啊可接受的货架上的好时机好卡接收到哈说句话家的家伙尽快的哈空间哈抠脚大汉手机号安徽大声道哈师大爱德华SDH 安徽aDH哈师大HDHA KSHD LJFJLJSDLJADLJALSDJALJWPOJRSLKFJLSJAFKASDJFKSFJLAJF;AJF;AJFD;ALJDF;JF;AJF;AJFA;JFA;JFALFJANXNVWEJRPOWJO沃尔沃我就发萨拉接发就发金发科技爱儿健大家卡卡垃圾啊卡空间卡就卡机卡机是卡机的卡机 ";
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
