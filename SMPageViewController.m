//
//  SMPageViewController.m
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/7/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "SMPageViewController.h"

@interface SMPageViewController ()

@end

@implementation SMPageViewController

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

- (IBAction)Link1:(id)sender{[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.ceciskids.org"]];};

- (IBAction)Link2:(id)sender{[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://www.facebook.com/pages/Students-Helping-Honduras-at-BU/111166912279644?ref=br_tf"]];};

- (IBAction)Link3:(id)sender{[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://twitter.com/SHHonduras"]];};

- (IBAction)Link4:(id)sender{[[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.youtube.com/channel/UCAKYVvvVnzp_Mt0z0HMjIVA"]];};

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
