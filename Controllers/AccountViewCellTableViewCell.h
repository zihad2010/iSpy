//
//  AccountViewCellTableViewCell.h
//  iSpy
//
//  Created by Amad Uddin on 12/16/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountViewCellTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *accountLabel;
@property (strong, nonatomic) IBOutlet UIImageView *settingImg;
@property (strong, nonatomic) IBOutlet UILabel *settingNameLabel;
@property (strong, nonatomic) IBOutlet UIView *rowView;
@property (strong, nonatomic) IBOutlet UILabel *settingLabel;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage;
@property (strong, nonatomic) IBOutlet UIImageView *cameraImage;
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;
@property (strong, nonatomic) IBOutlet UIImageView *othersettingImg;
@property (strong, nonatomic) IBOutlet UILabel *othersettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *helpLabel;
@property (strong, nonatomic) IBOutlet UILabel *contactsettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *chatsettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *dataUsageLabel;
@property (strong, nonatomic) IBOutlet UILabel *wifiorcelularLabel;
@property (strong, nonatomic) IBOutlet UILabel *inviteLabel;
@property (strong, nonatomic) IBOutlet UILabel *imagesettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *audiosettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *privacyLabel;


@end
