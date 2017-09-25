//
//  IYSignUpPageViewController.m
//  iSpy
//
//  Created by zihad on 11/30/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYSignUpPageViewController.h"
#import "IYDateOfBirthViewController.h"

@interface IYSignUpPageViewController ()

@end

@implementation IYSignUpPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupFields];
}

//setup all text fields
-(void) setupFields
{
    //setup user firstname field
    [_firstNameIYTextField setLabelText:@"First Name"];
    [_firstNameIYTextField setRequired:TRUE];
    [_firstNameIYTextField setValidEmail:TRUE];
    
    
    //setup lastname field
    [_lastNameIYTextField setLabelText:@"Last Name"];
    [_lastNameIYTextField setRequired:TRUE];
    [_lastNameIYTextField setMinLen:8]; // password have to minimum 8
    [_lastNameIYTextField setMaxLen:15]; //maximum 15
    
   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (IBAction)backSignUpToIYHomeViewButtonPress:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)goAnotherStroyBoardButtonPress:(id)sender {
    
//    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Storyboardamad" bundle:nil];
//   IYDateOfBirthViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"IYDateOfBirthViewController"];
//    [self presentViewController:vc animated:YES completion:nil];
//    //[self.navigationController pushViewController:v animated:<#(BOOL)#>]
    
}
@end
