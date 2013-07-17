//
//  STAppDelegate.h
//  SocialTest
//
//  Created by Steven He on 5/19/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STWeiboViewController.h"

#define kAppKey             @"2425740045"
#define kAppSecret          @"00a2dd2adceebbb6a3b133ab824e7aef"
#define kAppRedirectURI     @"http://StevenTest.SocialTest"

@class STViewController;
@class SinaWeibo;
@interface STAppDelegate : UIResponder <UIApplicationDelegate>
{
    SinaWeibo *sinaweibo;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) STViewController *viewController;


@property (readonly, nonatomic) SinaWeibo *sinaweibo;
@property (strong,nonatomic) STWeiboViewController *weiboViewController;
@end
