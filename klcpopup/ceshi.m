
//
//  ceshi.m
//  klcpopup
//
//  Created by yuweiyang on 2019/5/24.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import "ceshi.h"
#import <Masonry.h>

@implementation ceshi

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupui];
    }
    return self;
}

-(void)setupui{
    UIButton *AcceptBtn = [UIButton buttonWithType:UIButtonTypeCustom];

    AcceptBtn.clipsToBounds = YES;
    AcceptBtn.backgroundColor = [UIColor whiteColor];
    AcceptBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [AcceptBtn setTitle:@"确认" forState:UIControlStateNormal];
    [AcceptBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [AcceptBtn addTarget:self action:@selector(handClick:)
        forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:AcceptBtn];
    
    [AcceptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.top.equalTo(handLabel.mas_bottom).offset(20);
        make.left.offset(88);
        make.height.offset(35);
        make.width.offset(110);
        make.bottom.equalTo(self.mas_bottom).offset(-20);
    }];
    
}

-(void)handClick:(UIButton *)btn{
    if (_delegate && [_delegate respondsToSelector:@selector(taphah:)]) {
        [_delegate taphah:self];
    }
}


    
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
