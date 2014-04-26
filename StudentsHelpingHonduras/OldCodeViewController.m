//
//  OldCodeViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "OldCodeViewController.h"
#import <Parse/Parse.h>
@interface OldCodeViewController ()

@end

@implementation OldCodeViewController

@synthesize oldcodebox;
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
- (void)checkcode {
    PFQuery *query = [PFQuery queryWithClassName:@"Admin_Code"];
    [query getObjectInBackgroundWithId:@"xWMyZ4YEGZ" block:^(PFObject *gameScore, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", gameScore);
    }];
}
- (IBAction)checkcode:(id)sender {
    self.oldcode=oldcodebox.text;
    [self checkcode];
}

@end
