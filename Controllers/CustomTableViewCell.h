//
//  CustomTableViewCell.h
//  iSpyTimeLine
//
//  Created by zihad on 11/23/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *ispytitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *iyprofileName;
@property (strong, nonatomic) IBOutlet UIImageView *iySpyImage;
@property (strong, nonatomic) IBOutlet UIImageView *profileCellImageView;
@property (strong, nonatomic) IBOutlet UILabel *profileCellProfileName;
@property (strong, nonatomic) IBOutlet UILabel *profileCellTitle;
@property (strong, nonatomic) IBOutlet UILabel *profileCellTime;
@property (strong, nonatomic) IBOutlet UIImageView *postImageCellImageView;
@property (strong, nonatomic) IBOutlet UIImageView *commentCellProfileImageView;
@property (strong, nonatomic) IBOutlet UILabel *commentCellProfileName;
@property (strong, nonatomic) IBOutlet UILabel *commentCellComment;
@property (strong, nonatomic) IBOutlet UIButton *moreButtonTag;
@property (strong, nonatomic) IBOutlet UIImageView *answerImageView;

@end
