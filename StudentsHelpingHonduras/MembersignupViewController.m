//
//  MembersignupViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/21/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "MembersignupViewController.h"
#import <Parse/Parse.h>
@interface MembersignupViewController ()

@end


@implementation MembersignupViewController

@synthesize textBox1;
@synthesize textBox2;
@synthesize textBox3;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (void)myMethod {
    PFUser *user = [PFUser user];
    user.username = self.username;
    user.password = self.password;
    user.email = self.email;
    

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
    self.email = textBox1.text;
    self.username = textBox2.text;
    self.password = textBox3.text;
    
    [self myMethod];
};


@end;