//
//  IYHomeViewController.h
//  iSpy
//
//  Created by zihad on 11/19/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYHomeViewController : UIViewController <UITextFieldDelegate>
- (IBAction)loginButtonPress:(id)sender;

//User email for login
@property (weak, nonatomic) IBOutlet IYTextField *userEmailField;

//User password for login
@property (weak, nonatomic) IBOutlet IYTextField *userPasswordField;

@end
