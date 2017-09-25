//
//  IYSignUpSecurityViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYSignUpSecurityViewController : UIViewController

// security code textfield
@property (strong, nonatomic) IBOutlet IYTextField *securityCodeField;

//back to previous view.
- (IBAction)backBtn:(id)sender;

// To confrim the password
- (IBAction)confirmPasswordBtn:(id)sender;


@end
