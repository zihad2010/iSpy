//
//  SettingsViewController.h
//  iSpy
//
//  Created by zihad on 12/17/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountViewCellTableViewCell.h"

@interface SettingsViewController : UIViewController <UITabBarDelegate,UITableViewDataSource>

@property (strong,nonatomic) NSString *backButtonTitle;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
