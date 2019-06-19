//
//  ceshi.h
//  klcpopup
//
//  Created by yuweiyang on 2019/5/24.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ceshi;
NS_ASSUME_NONNULL_BEGIN
@protocol ceshiDelegate <NSObject>

-(void)taphah:(ceshi *)v;

@end

@interface ceshi : UIView
@property(nonatomic,weak)id<ceshiDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
