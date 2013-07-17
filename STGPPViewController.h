//
//  STGPPViewController.h
//  SocialTest
//
//  Created by Steven He on 7/7/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GooglePlus/GooglePlus.h>

@class GPPSignInButton;

@interface STGPPViewController : UIViewController <GPPSignInDelegate>

@property (retain, nonatomic) IBOutlet GPPSignInButton *signInButton;
@property (retain, nonatomic) IBOutlet UIButton *signOutButton;
@property (retain, nonatomic) IBOutlet UIButton *disconnectButton;
- (IBAction)signOut:(id)sender;
- (IBAction)disconnect:(id)sender;
@end
