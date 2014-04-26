//
//  FGTViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/14/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "FGTViewController.h"
#import <Parse/Parse.h>
@interface FGTViewController ()

@end

@implementation FGTViewController

@synthesize textBox4;
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

- (IBAction)getEmail:(id)sender {
    self.email = textBox4.text;
    [PFUser requestPasswordResetForEmailInBackground: self.email];
}






@end
