//
//  PrivacyViewController.m
//  iSpy
//
//  Created by Amad Uddin on 1/3/17.
//  Copyright © 2017 zihad. All rights reserved.
//

#import "PrivacyViewController.h"

@interface PrivacyViewController ()

@end

@implementation PrivacyViewController{


    NSMutableArray *privacysettingList;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
   privacysettingList = [NSMutableArray arrayWithObjects:@"Post",@"Profile photo",@"Status", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return privacysettingList.count;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"privacycell"];

    cell.privacyLabel.text = [privacysettingList objectAtIndex:indexPath.row];

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
