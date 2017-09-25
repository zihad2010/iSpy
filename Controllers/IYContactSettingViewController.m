//
//  IYContactSettingViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/31/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYContactSettingViewController.h"

@interface IYContactSettingViewController ()

@end

@implementation IYContactSettingViewController {


    NSMutableArray *contactsettinglist;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    contactsettinglist = [NSMutableArray arrayWithObjects:@"Invite a friend",@" Block a contact", nil];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return contactsettinglist.count;


}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    
        UIViewController *newViewController;
    
        if (indexPath.row == 0) {
    
            newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"inviteview"];
        }
    
        [self.navigationController pushViewController:newViewController animated:YES];

    

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"contactcell"];

    cell.contactsettingLabel.text = [contactsettinglist objectAtIndex:indexPath.row];
  
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
