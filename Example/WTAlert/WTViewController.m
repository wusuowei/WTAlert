//
//  WTViewController.m
//  WTAlert
//
//  Created by wentianen on 04/11/2016.
//  Copyright (c) 2016 wentianen. All rights reserved.
//

#import "WTViewController.h"
#import "WTAlert.h"

@interface WTViewController ()

@end

@implementation WTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (arc4random_uniform(2)) {
        [self showAlert];
    } else {
        [self showAlertWithBuilder];
    }
}

- (void)showAlertWithBuilder {
    __weak typeof(self) weakSelf = self;
    [WTAlert showAlertWithBuilder:^(WTAlertBuilder * _Nonnull builder) {
        builder.viewController = weakSelf;
        builder.title = @"This is builder title";
        builder.message = @"This is builer message";
        builder.cancelTitle = @"cancel";
        builder.cancelBlock = ^(){
            NSLog(@"I clicked builder cancel button");
        };
        builder.confirmTitle = @"confirm";
        builder.confirmBlock = ^(){
            NSLog(@"I clicked builder confirm button");
        };
    }];
}

- (void)showAlert {
    [WTAlert showAlertFrom:self title:@"This is normal title" message:@"This is normal message" cancelButtonTitle:@"cancel" cancle:^{
        NSLog(@"I clicked normal cancel button");
    } confirmButtonTitle:@"confirm" confirm:^{
        NSLog(@"I clicked normal confirm button");
    }];
}

@end
