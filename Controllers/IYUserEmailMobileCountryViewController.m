//
//  IYUserEmailMobileCountryViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYUserEmailMobileCountryViewController.h"

@interface IYUserEmailMobileCountryViewController ()

@end

@implementation IYUserEmailMobileCountryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupFields];

    
}

//setup all text fields
-(void) setupFields
{
    //setup user Email field
    [_userEmailField setLabelText:@"Email Address"];
    [_userEmailField setRequired:TRUE];
    [_userEmailField setValidEmail:TRUE];
    
    
    //setup Mobile field
    [_userMobileField setLabelText:@"Mobile Number"];
    [_userMobileField setRequired:false];
    [_userMobileField setMinLen:11]; // password have to minimum 8
    [_userMobileField setMaxLen:11]; //maximum 15
    
    //set up country Field
    [_userCountryField setLabelText:@"Country Name"];
    [_userCountryField setRequired:true];
    [_userMobileField setMinLen:11]; // password have to minimum 8
    [_userMobileField setMaxLen:11];
    
    
    
    
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

// Complete valid info button.
- (IBAction)completeBtn:(id)sender
{
    if(_userEmailField.valid && _userMobileField.valid && _userCountryField.valid){
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:_userEmailField.text forKey:@"Email"];
        [defaults setObject:_userMobileField.text forKey:@"Mobile"];
        [defaults setObject:_userCountryField.text forKey:@"Country"];
        [defaults synchronize];
        NSLog(@"%@",_userEmailField.text);
        NSLog(@"%@",_userMobileField.text);
        NSLog(@"%@",_userCountryField);
    }
    
    else
        
    {
        
        
    }

}

- (IBAction)backBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
