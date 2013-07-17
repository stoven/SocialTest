//
//  STWeiboViewController.h
//  SocialTest
//
//  Created by Steven He on 7/17/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SinaWeibo.h"
#import "SinaWeiboRequest.h"

@interface STWeiboViewController : UIViewController <SinaWeiboDelegate, SinaWeiboRequestDelegate>
{
    SinaWeibo *sinaweibo;
}

@property (retain, nonatomic) IBOutlet UIButton *signInButton;
@property (retain, nonatomic) IBOutlet UIButton *signOutButton;
@property (retain, nonatomic) IBOutlet UIButton *disconnectButton;
@property (readonly, nonatomic) SinaWeibo *sinaweibo;
- (IBAction)signIn:(id)sender;
- (IBAction)signOut:(id)sender;
- (IBAction)disconnect:(id)sender;
@end
