//
//  IYConfirmPasswordViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYConfirmPasswordViewController.h"

@interface IYConfirmPasswordViewController ()

@end

@implementation IYConfirmPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupFields];
}

//To set up password Field.
-(void) setupFields
{
    
    //setup password field
    [_passwordField setLabelText:@"Password"];
    [_passwordField setRequired:TRUE];
    [_passwordField setMinLen:8]; // password have to minimum 8
    [_passwordField setMaxLen:15]; //maximum 15
    
    //set up confirm password field.
    [_confrimPasswordField setLabelText:@"Confirm Password"];
    [_confrimPasswordField setRequired:TRUE];
    [_confrimPasswordField setMinLen:8]; // password have to minimum 8
    [_confrimPasswordField setMaxLen:15]; //maximum 15
    
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




//back to another view
- (IBAction)backBtn:(id)sender
{
     [self.navigationController popViewControllerAnimated:YES];
}

//Btn to reset Password.
- (IBAction)reSetPasswordBtn:(id)sender
{
    if(_passwordField.valid && _confrimPasswordField.valid )
    {
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:_passwordField.text forKey:@"Password"];
        [defaults setObject:_confrimPasswordField.text forKey:@"Confirm Password"];
        [defaults synchronize];
        NSLog(@"%@",_passwordField.text);
        NSLog(@"%@",_confrimPasswordField.text);
        
           }
    else
        
    {
        
    }
 
}
@end
