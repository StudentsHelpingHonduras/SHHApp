//
//  AdminSignUpViewController.h
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdminSignUpViewController : UIViewController
{
    UIAlertView *alertWithOkButton;
}
@property(weak, nonatomic) IBOutlet UITextField *textBox9;
@property(weak, nonatomic) NSString *adminemail;
@property(weak, nonatomic) IBOutlet UITextField *textBox10;
@property(weak, nonatomic) NSString *adminusername;
@property(weak, nonatomic) IBOutlet UITextField *textBox11;
@property(weak, nonatomic) NSString *adminpassword;
@property(weak, nonatomic) IBOutlet UITextField *textBox12;
@property(weak, nonatomic) NSString *code;
@end
