//
//  ViewController.h
//  iSpyTimeLine
//
//  Created by zihad on 11/22/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)menuButtonPress:(id)sender;
- (IBAction)moreCommentButtonPress:(id)sender;

@end

