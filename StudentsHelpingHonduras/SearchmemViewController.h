//
//  SearchmemViewController.h
//  StudentsHelpingHonduras
//
//  Created by Hannah Gibson on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchmemViewController : UIViewController
{
     UIAlertView *alertWithOkButton;
}
@property(weak, nonatomic) UISearchBar *membersearch;
@property(weak, nonatomic) NSString *membername;
@end
