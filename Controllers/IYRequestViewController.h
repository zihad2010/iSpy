//
//  IYRequestViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYRequestViewController : UIViewController

// Email text field to reset password.
@property (strong, nonatomic) IBOutlet IYTextField *emailFieldToResetPassword;

//back btn to go the previos view.
- (IBAction)backBtn:(id)sender;


// Request Button to recover password.
- (IBAction)sendRestRequestBtn:(id)sender;

@end
