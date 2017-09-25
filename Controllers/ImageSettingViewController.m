//
//  ImageSettingViewController.m
//  iSpy
//
//  Created by Amad Uddin on 1/3/17.
//  Copyright © 2017 zihad. All rights reserved.
//

#import "ImageSettingViewController.h"

@interface ImageSettingViewController ()

@end

@implementation ImageSettingViewController {


    NSMutableArray *imagesettingList;


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    imagesettingList = [NSMutableArray arrayWithObjects:@"Never",@"Wifi",@"Wifi and celular", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return imagesettingList.count;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    AccountViewCellTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"imagesettingcell"];

    cell.imagesettingLabel.text = [imagesettingList objectAtIndex:indexPath.row];
    
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
