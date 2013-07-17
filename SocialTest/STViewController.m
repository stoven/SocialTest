//
//  STViewController.m
//  SocialTest
//
//  Created by Steven He on 5/19/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import "STViewController.h"
#import "STGPPViewController.h"
#import "STWeiboViewController.h"

@interface STViewController (){
    STGPPViewController *gppViewController;
    STWeiboViewController *weiboViewController;
}
//@property (nonatomic, retain) STGPPViewController gppViewController;
@end

@implementation STViewController

- (IBAction)tweet:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
        NSLog(@"I can send tweets");
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"Hello World"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else{
        NSString *message = @"The application cannot send a tweet at the moment. This is because it cannot reach Twitter or you don't have a Twitter account associated with this device.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)facebook:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]){
        NSLog(@"I can send tweets");
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [tweetSheet setInitialText:@"Hello World"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else{
        NSString *message = @"The application cannot send a tweet at the moment. This is because it cannot reach Twitter or you don't have a Twitter account associated with this device.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)wb:(id)sender{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeSinaWeibo]){
        NSLog(@"I can send tweets");
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeSinaWeibo];
        [tweetSheet setInitialText:@"Hello World"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else{
        NSString *message = @"The application cannot send a tweet at the moment. This is because it cannot reach Twitter or you don't have a Twitter account associated with this device.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)wbOauth:(id)sender{
    weiboViewController = [[STWeiboViewController alloc] initWithNibName:@"STWeiboViewController" bundle:nil];
    NSLog(@"Test");
    self.view.window.rootViewController = weiboViewController;
}

- (IBAction)googleplus:(id)sender{
    gppViewController = [[STGPPViewController alloc] initWithNibName:@"STGPPViewController" bundle:nil];
    
//    [self.view addSubview:gppViewController.view];
    self.view.window.rootViewController = gppViewController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
