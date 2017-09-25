//
//  InviteFriendViewController.m
//  iSpy
//
//  Created by Amad Uddin on 1/1/17.
//  Copyright © 2017 zihad. All rights reserved.
//

#import "InviteFriendViewController.h"

@interface InviteFriendViewController ()

@end

@implementation InviteFriendViewController {



    NSMutableArray *inviteList;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    inviteList = [NSMutableArray arrayWithObjects:@"Invite to iSpy",@"Social Network",@"Email",@"SMS", nil];
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return inviteList.count;



}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

//
//    UIViewController *newViewController;
//
//    if (indexPath.row == 0) {
//        
//        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"inviteview"];
//    }
//    
//    [self.navigationController pushViewController:newViewController animated:YES];


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"invitecell"];

    cell.inviteLabel.text = [inviteList objectAtIndex:indexPath.row];
    

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
