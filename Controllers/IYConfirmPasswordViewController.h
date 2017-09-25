//
//  IYConfirmPasswordViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYConfirmPasswordViewController : UIViewController

//TextField to enter new password
@property (strong, nonatomic) IBOutlet IYTextField *passwordField;

//TextFiled to confirm password
@property (strong, nonatomic) IBOutlet IYTextField *confrimPasswordField;
//pop up button
- (IBAction)backBtn:(id)sender;


//Button to reset password
- (IBAction)reSetPasswordBtn:(id)sender;

@end
