//
//  AdminSignUpViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "AdminSignUpViewController.h"
#import <Parse/Parse.h>
@interface AdminSignUpViewController ()

@end

@implementation AdminSignUpViewController

@synthesize textBox9;
@synthesize textBox10;
@synthesize textBox11;
@synthesize textBox12;
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

- (void)myMethod {
    PFUser *user = [PFUser user];
    user.username = self.adminusername;
    user.password = self.adminpassword;
    user.email = self.adminemail;
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"SUCCES"
        message:@"Awaiting approval from admin" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertWithOkButton show];
            
            
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
            alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"Error"
        message:@"Please enter a valid email." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertWithOkButton show];
        }
    }];
}
- (IBAction)submitSignup:(id)sender {
    self.adminemail = textBox9.text;
    self.adminusername = textBox10.text;
    self.adminpassword = textBox11.text;
    self.code=textBox12.text;
    //if self.code
    [self myMethod];
};
@end
