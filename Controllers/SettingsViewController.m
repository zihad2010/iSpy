//
//  SettingsViewController.m
//  iSpy
//
//  Created by zihad on 12/17/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "SettingsViewController.h"
#import "AccountViewCellTableViewCell.h"
#import "IYSettingConstant.h"



@interface SettingsViewController ()

@end

@implementation SettingsViewController

{

    NSMutableArray *settingtList;
    NSMutableArray *settingImg;
    AccountViewCellTableViewCell *cell;
    
    
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.navigationController.navigationBar.topItem.title =_backButtonTitle;
   
  
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    int height = 93;
    
    if (indexPath.row == 0) {
        
        height = 150;
    }
    return height;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {


    UIViewController *newViewController;
    
    if (indexPath.row == 0) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"profileview"];
    }
    
    if(indexPath.row== 1){
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AccountView"];
        
    }
    
    if (indexPath.row == 2) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"chatsettingview"];
    }
    
    if (indexPath.row == 5) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contactsetting"];

    }
    
    if (indexPath.row == 3) {
        
         newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"notification"];
    }
    
    if (indexPath.row == 4) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"datausageview"];
    }
    
    if (indexPath.row == 6) {
        
        newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"aboutandhelp"];
    }


    [self.navigationController pushViewController:newViewController animated:YES];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        
    
    
    return [[IYSettingConstant titles] count ];
        
    
    //return 8;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    if (indexPath.row == 0){
    
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"settingprocell"];
        
   // cell.settingImg.frame = CGRectMake(10, 20, 75, 75);
   // cell.settingLabel.frame = CGRectMake(200, 20, 42, 35);
        
    // cell.settingImg.layer.cornerRadius = 30.0f;
        
    cell.settingImg.layer.cornerRadius = cell.settingImg.frame.size.width/2;
    cell.settingImg.clipsToBounds = YES;
    cell.settingImg.layer.borderWidth = 3.0f;
    cell.settingImg.layer.borderColor = [UIColor lightGrayColor].CGColor;
        
        
        //CGRect frame = cell.settingImg.frame;
        
        
        
//        CGRect frame = cell.settingLabel.frame;
//        frame = CGRectMake(40, -50, 100, 35);
//        cell.settingLabel.frame = frame;
//        
        
      
      //  UIView* separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 119, 415, 0.5)];/// change size as you need.
        
//        separatorLineView.backgroundColor = [UIColor grayColor];// you can also put image here
//        [cell.contentView addSubview:separatorLineView];
        
   
        //cell.rowView.hidden = YES;
        //cell.settingLabel.text = url;
    //cell.settingNameLabel.text = [settingtList objectAtIndex:indexPath.row];
    cell.settingNameLabel.text = @"Minhaz Ahmed Sani";
    cell.settingImg.image = [UIImage imageNamed:@"Barack-Obama.jpg"];
       // cell.settingImg.image = [UIImage imageNamed:[IYSettingConstant settingImgm]];
     // cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//        cell.settingImg.image = [UIImage imageNamed:[[IYSettingConstant settingImgm ] objectAtIndex:indexPath.row];
        
       // cell.settingImg.image = [UIImage imageNamed:[IYSettingConstant settingImgm ]
       // cell.settingImg.image =
        
        
        
        
    }
    
    else {
        
        
        
        
        //cell.settingImg.frame = CGRectMake(10, 20, 20, 15);

        cell = [_tableView dequeueReusableCellWithIdentifier:@"othersettingcell"];

    
       //cell.settingNameLabel.text = [settingtList objectAtIndex:indexPath.row];
     // cell.settingNameLabel.text = [[IYSettingConstant titles] objectAtIndex:indexPath.row];

     cell.othersettingLabel.text = [[IYSettingConstant titles] objectAtIndex:indexPath.row];
     cell.othersettingImg.image = [UIImage imageNamed:@"key.png"];
        //cell.settingImg.image = [ [IYSettingConstant settingImgm]objectAtIndex:indexPath.row];
        
        
        

    
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
