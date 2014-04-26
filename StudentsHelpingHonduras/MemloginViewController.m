//
//  MemloginViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/25/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "MemloginViewController.h"
#import <Parse/Parse.h>

@interface MemloginViewController ()

@end

@implementation MemloginViewController

@synthesize textBox5;
@synthesize textBox6;
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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterusername:(id)sender {
    self.username=textBox5.text;
    self.password=textBox6.text;
    [PFUser
logInWithUsernameInBackground: self.username
     password:self.password
    block:^(PFUser *user, NSError *error) {
if (user) {
    alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"Welcome!"
        message:@"Directing you to member menu" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertWithOkButton show];
    
    [self performSegueWithIdentifier:@"Login" sender:self];
}
else {
    alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"Error"
    message:@"Incorrect Username or password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertWithOkButton show];

    }
                                    }];
    
}


@end
