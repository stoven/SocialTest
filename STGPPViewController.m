//
//  STGPPViewController.m
//  SocialTest
//
//  Created by Steven He on 7/7/13.
//  Copyright (c) 2013 Steven He. All rights reserved.
//

#import "STGPPViewController.h"
#import <GooglePlus/GooglePlus.h>
#import <GoogleOpenSource/GoogleOpenSource.h>
@interface STGPPViewController ()

@end


static NSString * const kClientId = @"1058386876539.apps.googleusercontent.com";
@implementation STGPPViewController
@synthesize signOutButton = signOutButton_;
@synthesize disconnectButton = disconnectButton_;
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
    GPPSignIn *signIn = [GPPSignIn sharedInstance];
    signIn.clientID = kClientId;
    signIn.scopes = [NSArray arrayWithObject:kGTLAuthScopePlusLogin];
    signIn.delegate = self;
    [signIn trySilentAuthentication];
    //[loginButton setTitle:login forState:UIControlStateNormal];

    //[signIn authenticate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)finishedWithAuth:(GTMOAuth2Authentication *)auth error:(NSError *)error
{
    NSLog(@"Received error %@ and auth object %@",error, auth);
    if (error) {
        // Do some error handling here.
    } else {
        [self refreshInterfaceBasedOnSignIn];
    }
}

- (void)loginButtonPressed
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"%@", [keyWindow subviews]);
    
    
    //[userInfo release], userInfo = nil;
    //[statuses release], statuses = nil;
    
    //SinaWeibo *sinaweibo = [self sinaweibo];
    //[sinaweibo logIn];
}
-(void)refreshInterfaceBasedOnSignIn
{
    if ([[GPPSignIn sharedInstance] authentication]) {
        // The user is signed in.
        self.signInButton.hidden = YES;
        // Perform other actions here, such as showing a sign-out button
    } else {
        self.signInButton.hidden = NO;
        // Perform other actions here
    }
}
- (IBAction)signOut:(id)sender {
    [[GPPSignIn sharedInstance] signOut];
    
    [self refreshInterfaceBasedOnSignIn];
}

- (IBAction)disconnect:(id)sender {
    [[GPPSignIn sharedInstance] disconnect];
    [self refreshInterfaceBasedOnSignIn];
}


- (void)didDisconnectWithError:(NSError *)error {
    if (error) {
        //signInAuthStatus_.text =
        [NSString stringWithFormat:@"Status: Failed to disconnect: %@", error];
    } else {
        //signInAuthStatus_.text =
        [NSString stringWithFormat:@"Status: Disconnected"];
        //signInDisplayName_.text = @"";
        //[self enableSignInSettings:YES];
    }
}

@end
