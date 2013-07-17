//
//  STViewController.h
//  SocialTest
//
//  Created by Steven He on 5/19/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Social/Social.h>

@interface STViewController : UIViewController
- (IBAction)tweet:(id)sender;
- (IBAction)facebook:(id)sender;
- (IBAction)wb:(id)sender;
- (IBAction)wbOauth:(id)sender;
- (IBAction)googleplus:(id)sender;


@end
