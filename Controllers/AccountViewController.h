//
//  AccountViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/16/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountViewCellTableViewCell.h"

@interface AccountViewController : UIViewController<UITabBarDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
