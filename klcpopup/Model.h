//
//  Model.h
//  klcpopup
//
//  Created by yuweiyang on 2019/6/5.
//  Copyright © 2019 yuweiyang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject
@property(nonatomic,strong)NSString *name;
+(Model *)shareManger;
@end



NS_ASSUME_NONNULL_END
