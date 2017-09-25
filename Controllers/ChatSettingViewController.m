//
//  ChatSettingViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/31/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "ChatSettingViewController.h"

@interface ChatSettingViewController ()

@end

@implementation ChatSettingViewController{

    NSMutableArray *chatsettinglist;




}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    chatsettinglist = [NSMutableArray arrayWithObjects:@"Auto download",@" Background",@"Backup",@"Chat History",@"Text size", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return chatsettinglist.count;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"chatsettingcell"];

    cell.chatsettingLabel.text = [chatsettinglist objectAtIndex:indexPath.row];

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
