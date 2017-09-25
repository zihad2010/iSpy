//
//  DataUsageandStorageViewController.m
//  iSpy
//
//  Created by Amad Uddin on 1/1/17.
//  Copyright © 2017 zihad. All rights reserved.
//

#import "DataUsageandStorageViewController.h"

@interface DataUsageandStorageViewController ()

@end

@implementation DataUsageandStorageViewController{

    NSMutableArray *datausageList;
    NSMutableArray *usagelist;


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    datausageList = [NSMutableArray arrayWithObjects:@"Image",@"Audio",@"Videos",@"Document",@"Network usage",@"Storage usage", nil];
    //usagelist = [NSMutableArray arrayWithObjects:@"Wifi or cellular",@"Wifi",@"Wifi",@"Wifi",@"",@"", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return datausageList.count;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  
    UIViewController *newViewController;
    
    if (indexPath.row == 0) {
        
               newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"imagesettingview"];
            }
    
    if (indexPath.row == 1) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"audioview"];
    }

    
    
    [self.navigationController pushViewController:newViewController animated:YES];



}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"datausagecell"];

    cell.dataUsageLabel.text = [datausageList objectAtIndex:indexPath.row];
    
  //  cell.wifiorcelularLabel.text = [usagelist objectAtIndex:indexPath.row];


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
