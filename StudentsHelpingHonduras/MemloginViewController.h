//
//  MemloginViewController.h
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/25/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MemloginViewController : UIViewController
<UIAlertViewDelegate>
{
    UIAlertView *alertWithOkButton;
}
@property (weak, nonatomic) IBOutlet UITextField *textBox5;
@property (weak, nonatomic) NSString *username;
@property (weak, nonatomic) IBOutlet UITextField *textBox6;
@property (weak, nonatomic) NSString *password;
@end
