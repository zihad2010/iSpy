//
//  IYSignUpSecurityViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYSignUpSecurityViewController.h"

@interface IYSignUpSecurityViewController ()

@end

@implementation IYSignUpSecurityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupFields];
}

//set up security code.
-(void) setupFields
{
    //setup user email field
    [_securityCodeField setLabelText:@"Security Code"];
    
    //Set this deligage
    //self.userPasswordField.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




//Btn to back another view.
- (IBAction)backBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

//Btn to validate confirm password.
- (IBAction)confirmPasswordBtn:(id)sender
{
    
}
@end
