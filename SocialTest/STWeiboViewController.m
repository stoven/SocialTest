//
//  STWeiboViewController.m
//  SocialTest
//
//  Created by Steven He on 7/17/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import "STWeiboViewController.h"
#import "STAppDelegate.h"

@interface STWeiboViewController ()

@end


@implementation STWeiboViewController
@synthesize sinaweibo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    sinaweibo = [[SinaWeibo alloc] initWithAppKey:kAppKey appSecret:kAppSecret appRedirectURI:kAppRedirectURI andDelegate: self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signIn:(id)sender{
    [sinaweibo logIn];

}
- (IBAction)signOut:(id)sender{}
- (IBAction)disconnect:(id)sender{}


- (SinaWeibo *)sinaweibo
{
    STAppDelegate *delegate = (STAppDelegate *)[UIApplication sharedApplication].delegate;
    return delegate.sinaweibo;
}

@end
