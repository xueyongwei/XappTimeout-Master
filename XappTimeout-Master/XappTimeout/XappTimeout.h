//
//  XappTimeout.h
//  XappTimeout-Master
//
//  Created by 薛永伟 on 16/1/27.
//  Copyright © 2016年 薛永伟. All rights reserved.
//

#import <UIKit/UIKit.h>

//超时触发界面发送取消超时操作通知名称
static NSString *XAPPTIMEOUTNOTI = @"XtimerNoti";

@interface XappTimeout : UIApplication
@property (nonatomic,assign)BOOL hasDo;
@end
