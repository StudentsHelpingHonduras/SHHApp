//
//  NewCodeViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "NewCodeViewController.h"
#import <Parse/Parse.h>
@interface NewCodeViewController ()

@end

@implementation NewCodeViewController

@synthesize newcodebox;
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
- (void)pushcode {
    PFObject *Code=[PFObject objectWithClassName:@"Admin_Code"];
    Code[@"Code"]=self.newcode;
    [Code saveInBackground];
}
- (IBAction)pushcode:(id)sender {
    self.newcode=newcodebox.text;
    [self pushcode];
}

@end
