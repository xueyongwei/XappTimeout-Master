//
//  XappTimeout.m
//  XappTimeout-Master
//
//  Created by 薛永伟 on 16/1/27.
//  Copyright © 2016年 薛永伟. All rights reserved.
//

#import "XappTimeout.h"
#import "LockDemoViewController.h"

//超时时间
static NSTimeInterval Xtime = 5.0;

@implementation XappTimeout
{
    NSTimer *XdieTimer;
}
// 监听所有触摸，当屏幕被触摸，时钟将被重置
-(void)sendEvent:(UIEvent *)event {
    
    [super sendEvent:event];
    
    [self globeObser];
    
    NSLog(@"屏幕有操作，计时归零");
    if (!XdieTimer) {
        
        [self startXtimer];
        
    }
    
    NSSet *allTouches = [event allTouches];
    
    if ([allTouches count] > 0) {
        
        UITouchPhase phase= ((UITouch *)
                             
                             [allTouches anyObject]).phase;
        
        if (phase ==UITouchPhaseBegan) {
            
            [self resetXdieTimer];
        }
    }
    
}
-(void)getGloubeNoti:(NSNotification *)noti
{
    NSLog(@"收到通知！超时事件可再次触发！");
    _hasDo = NO;

}
-(void)globeObser
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getGloubeNoti:) name:@"XtimerNoti" object:nil];
}
-(void)whatUwant
{
    NSLog(@"超时!");
    //取出window
    UIWindow *win = [[UIApplication sharedApplication].windows lastObject];
    if (!_hasDo) {
        NSLog(@"调用了超时处理!");
        LockDemoViewController *bb = [[LockDemoViewController alloc]initWithNibName:NSStringFromClass([LockDemoViewController class]) bundle:nil];
        //用win的controller执行弹出操作
        [win.rootViewController presentViewController:bb animated:YES completion:nil];
        //标记为已经执行过了超时操作
        _hasDo = YES;
    }else
    {
        NSLog(@"但是未调用超时处理!!");
    }
}

-(void)startXtimer
{
    XdieTimer = [NSTimer timerWithTimeInterval:Xtime target:self selector:@selector(whatUwant) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:XdieTimer forMode:NSDefaultRunLoopMode];
}
-(void)resetXdieTimer
{
    [XdieTimer setFireDate:[NSDate dateWithTimeIntervalSinceNow:Xtime]];
}

@end
