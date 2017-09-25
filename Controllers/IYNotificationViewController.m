//
//  IYNotificationViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/26/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYNotificationViewController.h"

@interface IYNotificationViewController ()

@end

@implementation IYNotificationViewController {

    AccountViewCellTableViewCell *cell;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    int height = 20;
    
    if (indexPath.row == 0) {
        height = 195;
    }
    
    
    if (indexPath.row == 1) {
        height = 80;
    }
    
    if (indexPath.row == 2) {
        
        height = 132;
    }
    if (indexPath.row == 3) {
        
        height = 78;
    }
    
    if (indexPath.row == 4) {
        height = 65;
    }

    return height;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 5;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
        cell = [_tableView dequeueReusableCellWithIdentifier:@"IYNotificationCell" forIndexPath:indexPath];
    }
    
    if (indexPath.row == 1) {
        cell = [_tableView dequeueReusableCellWithIdentifier:@"vibrateCell"];
    }
    
    if (indexPath.row == 2) {
        cell = [_tableView dequeueReusableCellWithIdentifier:@"groupNotificationCell"];
    }
    
    if (indexPath.row == 3) {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"previewmessagecell"];
    }
    
    if (indexPath.row == 4) {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"resetnotificationcell"];
    }

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
