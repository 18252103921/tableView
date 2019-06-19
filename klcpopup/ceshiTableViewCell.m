//
//  ceshiTableViewCell.m
//  klcpopup
//
//  Created by yuweiyang on 2019/6/18.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import "ceshiTableViewCell.h"

@interface ceshiTableViewCell() 
@property (weak, nonatomic) IBOutlet UILabel *ceshilabel;

@end

@implementation ceshiTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(NSString *)JXTSystemMsgCellReusableCellWithIdentifier{
    
    return [self description];
}

-(void)setLabel:(NSString *)label{
    self.ceshilabel.text = label;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
