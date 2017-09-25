//
//  AccountViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/16/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()

@end

@implementation AccountViewController
{
    NSMutableArray *accountList;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    accountList=[NSMutableArray arrayWithObjects: @"Privacy",@"Change password",@"Change details",@"Deactivate My Account",nil];
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return accountList.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *newViewController;
    
    if(indexPath.row==0){
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Privacy"];
        
    }
    
    if(indexPath.row==1){
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Security"];
        
    }
    
    if(indexPath.row==2){
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ChangeNumber"];
        
    }
    
    if (indexPath.row == 3) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DeleteMyAcc"];
        
    }
    
    
    [self.navigationController pushViewController:newViewController animated:YES];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    
    cell.accountLabel.text = [accountList objectAtIndex:indexPath.row];
    
    
    
    return cell;
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

@end
