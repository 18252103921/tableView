//
//  ceshiTableViewCell.h
//  klcpopup
//
//  Created by yuweiyang on 2019/6/18.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ceshiTableViewCell : UITableViewCell
@property(nonatomic,strong)NSString *label;
+(NSString *)JXTSystemMsgCellReusableCellWithIdentifier;
@end

NS_ASSUME_NONNULL_END
