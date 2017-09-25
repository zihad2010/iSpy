//
//  IYProfileViewController.m
//  iSpy
//
//  Created by Amad Uddin on 12/20/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYProfileViewController.h"
#import "AccountViewCellTableViewCell.h"

@interface IYProfileViewController ()

@end

@implementation IYProfileViewController
{
    AccountViewCellTableViewCell *cell;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    int height =20;
    
    if (indexPath.row == 0) {
        height = 230;
    }

    if (indexPath.row == 1) {
        height = 46;
    }
    
    if (indexPath.row == 2) {
        
        height = 78;
    }
    if (indexPath.row == 3) {
        height = 110;
    }
    if (indexPath.row == 4) {
        height = 78;
    }
    return height;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"profileImageCell" forIndexPath:indexPath];
        
        if (cell == nil) {
            cell = [[AccountViewCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"profileImageCell"];
        }
        
        cell.profileImage.image = [UIImage imageNamed:@"Barack-Obama.jpg"];
       // cell.cameraImage.image = [UIImage imageNamed:@"Barack-Obama.jpg"];
        
        cell.profileImage.layer.cornerRadius = cell.profileImage.frame.size.width/2;
        cell.profileImage.clipsToBounds = YES;
        cell.profileImage.layer.borderWidth = 3.0f;
        cell.profileImage.layer.borderColor = [UIColor lightGrayColor].CGColor;
        
        cell.cameraImage.layer.cornerRadius = cell.cameraImage.frame.size.width/2;
        cell.cameraImage.clipsToBounds = YES;
        cell.cameraImage.layer.borderWidth = 3.0f;
        cell.cameraImage.layer.borderColor = [UIColor lightGrayColor].CGColor;

        

        
        
    }
    
    if (indexPath.row == 1) {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"nameCell" forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[AccountViewCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"nameCell"];
            
            NSLog(@" how are you %ld",indexPath.row);
        }

    }
    
    if (indexPath.row == 2) {
        cell = [_tableView dequeueReusableCellWithIdentifier:@"constantCell" forIndexPath:indexPath];
    }
    
    if (indexPath.row == 3) {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"statusCell"];
    }

    if (indexPath.row == 4) {
        cell = [_tableView dequeueReusableCellWithIdentifier:@"numberCell"];
        cell.numberLabel.text = @"+8801757381616";
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
