//
//  IYHomeViewController.m
//  iSpy
//
//  Created by zihad on 11/19/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYHomeViewController.h"
#import "IYSignUpPageViewController.h"
#import "dataManager.h"
@interface IYHomeViewController ()

@property (strong,nonatomic) dataManager *dataParser;

@end

@implementation IYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dataParser=[dataManager new];
    
    [self setupFields];
}

//setup all text fields
-(void) setupFields
{
    //setup user email field
    [self.userEmailField setLabelText:@"Email Address"];
    [self.userEmailField setRequired:TRUE];
    [self.userEmailField setValidEmail:TRUE];
    
    
    //setup password field
    [self.userPasswordField setLabelText:@"Password"];
    [self.userPasswordField setRequired:TRUE];
    [self.userPasswordField setMinLen:8]; // password have to minimum 8
    [self.userPasswordField setMaxLen:15]; //maximum 15
    
    //Set this deligage
    //self.userPasswordField.delegate = self;
    
    
    
    
}

/**
 -(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
 {
 // TOOD need to call parent deligate here
 
 
 return TRUE;
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dataFromController:(NSString *)data
{
    NSLog(@"call");
    
}



- (IBAction)loginButtonPress:(id)sender {
    
    if(_userPasswordField.valid && _userEmailField.valid){
        
        BOOL emailAndpasswoardValid=[_dataParser checkValidUserEmail:_userEmailField.text andPasswoard:_userPasswordField.text];
        
        if (emailAndpasswoardValid) {
            
            NSLog(@"%@",_userPasswordField.text);
            NSLog(@"%@",_userEmailField.text);
            
        } else{
            
            NSLog(@"invalid");
            
        }
    }
}
@end
