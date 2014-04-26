//
//  MembersignupViewController.h
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/21/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MembersignupViewController : UIViewController <UIAlertViewDelegate>
{
    UIAlertView *alertWithOkButton;
}

@property (weak, nonatomic) IBOutlet UITextField *textBox1;
@property (weak, nonatomic) NSString *email;
@property (weak, nonatomic) IBOutlet
    UITextField *textBox2;
@property (weak, nonatomic) NSString *username;
@property (weak, nonatomic) IBOutlet
    UITextField *textBox3;
@property (weak, nonatomic) NSString *
    password;

@end
