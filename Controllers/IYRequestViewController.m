//
//  IYRequestViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/11/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYRequestViewController.h"

@interface IYRequestViewController ()

@end

@implementation IYRequestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupFields];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//set up email Field.

-(void) setupFields
{
    //setup user Email field
    [_emailFieldToResetPassword setLabelText:@"Email to Reset Password"];
    [_emailFieldToResetPassword setRequired:TRUE];
    [_emailFieldToResetPassword setValidEmail:TRUE];
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//Btn to send request.
- (IBAction)sendRestRequestBtn:(id)sender
{
    if(_emailFieldToResetPassword.valid ){
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:_emailFieldToResetPassword.text forKey:@"Email"];
        [defaults synchronize];
        NSLog(@"%@",_emailFieldToResetPassword.text);
        
    }
    
    else
        
    {
        
        
    }
    
}

//back btn to go previous view.
- (IBAction)backBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
