//
//  SearchmemViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "SearchmemViewController.h"
#import <Parse/Parse.h>
@interface SearchmemViewController ()

@end

@implementation SearchmemViewController

@synthesize membersearch;
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
- (BOOL)search {
    PFQuery *query= [PFUser query];
    [query whereKey:@"username"
            equalTo:self.membername];
    NSArray *result = [query findObjects];
    if (result!=NULL)
        return true;
    else
        return false;
}

- (IBAction)search:(id)sender {
    [self search];
    if(self.search){
    alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"Member Found"
        message:@"Redirecting to memberpage" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertWithOkButton show];

    [self performSegueWithIdentifier:@"ismember" sender:self];}
    else {
    alertWithOkButton = [[UIAlertView alloc]initWithTitle:@"Error"
    message:@"Please enter a valid member name" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertWithOkButton show];
        
    }
};

@end
