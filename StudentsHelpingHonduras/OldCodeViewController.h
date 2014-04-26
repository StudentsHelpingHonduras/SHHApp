//
//  OldCodeViewController.h
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OldCodeViewController : UIViewController
{
    UIAlertView *alertWithOkButton;
}
@property(weak, nonatomic) IBOutlet UITextField *oldcodebox;
@property(weak, nonatomic) NSString *oldcode;
@end
