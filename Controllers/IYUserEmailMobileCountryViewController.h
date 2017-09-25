//
//  IYUserEmailMobileCountryViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYUserEmailMobileCountryViewController : UIViewController
//User Email Text Field.
@property (strong, nonatomic) IBOutlet IYTextField *userEmailField;

//User Mobile Text Field
@property (strong, nonatomic) IBOutlet IYTextField *userMobileField;

//Select Country Text Box
@property (strong, nonatomic) IBOutlet IYTextField *userCountryField;

// User Info Complete Button.
- (IBAction)completeBtn:(id)sender;

//Back to another view btn.
- (IBAction)backBtn:(id)sender;


@end
