//
//  AboutAndHelpViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/27/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "AboutAndHelpViewController.h"

@interface AboutAndHelpViewController ()

@end

@implementation AboutAndHelpViewController {


    NSMutableArray *helplist;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    helplist = [NSMutableArray arrayWithObjects: @"FAQ",@"Contact us",@"Support",@"Update",nil];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return helplist.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"aboutandhelpcell"];
    
    cell.helpLabel.text = [helplist objectAtIndex:indexPath.row];

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
