//
//  IYSignUpPageViewController.h
//  iSpy
//
//  Created by zihad on 11/30/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IYTextField.h"

@interface IYSignUpPageViewController : UIViewController
@property (strong, nonatomic) IBOutlet IYTextField *lastNameIYTextField;
@property (strong, nonatomic) IBOutlet IYTextField *firstNameIYTextField;
- (IBAction)backSignUpToIYHomeViewButtonPress:(id)sender;
- (IBAction)goAnotherStroyBoardButtonPress:(id)sender;

@end
