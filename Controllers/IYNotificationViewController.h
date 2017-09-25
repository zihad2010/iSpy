//
//  IYNotificationViewController.h
//  iSpy
//
//  Created by Amad Uddin on 12/26/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountViewCellTableViewCell.h"

@interface IYNotificationViewController : UIViewController <UITableViewDataSource, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
