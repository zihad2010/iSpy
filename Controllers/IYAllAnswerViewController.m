//
//  IYAllAnswerViewController.m
//  iSpy
//
//  Created by zihad on 1/4/17.
//  Copyright © 2017 zihad. All rights reserved.
//

#import "IYAllAnswerViewController.h"
#import "CustomTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "SettingsViewController.h"
#import "AccountsViewController.h"
#import "GroupChatViewController.h"
#define imageLink @"http://bthi.co.uk/media/"

@interface IYAllAnswerViewController ()
{
    NSArray *cellArray;
    NSArray *dataArray;
    CustomTableViewCell *cell;
    NSArray *json;
    NSDictionary *dataDict;
}
@property (strong,nonatomic) NSMutableArray *sectionItems;
@property (strong,nonatomic) NSMutableArray *allObjectOfSection;
@property (strong,nonatomic) NSMutableArray *totalCommentInSection;

@end

@implementation IYAllAnswerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data (1)" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    //for dynamic cell
    self.tableView.estimatedRowHeight = 80;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView setNeedsLayout];
    [self.tableView layoutIfNeeded];
    

    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *array=[[json objectAtIndex:_numberOfSection] objectForKey:@"answers"];
    
    return array.count+1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (indexPath.row ==0)
    {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"postImageCell" forIndexPath:indexPath];
        NSDictionary *dict= [[json objectAtIndex:_numberOfSection] objectForKey:@"ispy"];
        
        NSLog(@"array:%@",dict);
        
        
        
        
        NSString *profileName=[NSString stringWithFormat:@"%@ Spy with this little eye...",[dict objectForKey:@"user_firstname"]];
        
        cell.iyprofileName.attributedText=[self  changeTheattributeOfAString:profileName];
        
        cell.ispytitleLabel.text=[dict objectForKey:@"ispy_title"];
        
        
        cell.profileCellImageView.layer.cornerRadius = cell.profileCellImageView.frame.size.width / 2;
        cell.profileCellImageView.layer.borderWidth = 2.0f;
        cell.profileCellImageView.layer.borderColor = [UIColor grayColor].CGColor;
        cell.profileCellImageView.clipsToBounds = YES;
        
        NSString *imageUrl=[NSString stringWithFormat:@"%@%@",imageLink,[dict objectForKey:@"user_profile_image"]];
        
        [cell.profileCellImageView sd_setImageWithURL:[NSURL URLWithString:imageUrl]
                                     placeholderImage:[UIImage imageNamed:@"bill-gates.jpg"]
                                              options:SDWebImageRefreshCached];
        
        
        
        NSString *imageUrlForispy_media_key=[NSString stringWithFormat:@"%@%@",imageLink,[dict objectForKey:@"ispy_media_key"]];
        
        SDWebImageManager *manager = [SDWebImageManager sharedManager];
        [manager downloadImageWithURL:[NSURL URLWithString:imageUrlForispy_media_key]
                              options:0
                             progress:^(NSInteger receivedSize, NSInteger expectedSize) {
                                 // progression tracking code
                             }
                            completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
                                if (image) {
                                    // do something with image
                                    
                                    UIImage *imag=[self imageWithImage:image scaledToWidth:cell.iySpyImage.frame.size.width];
                                    
                                    
                                    // NSLog(@"%@",image);
                                    [cell.iySpyImage setImage:imag];
                                }
                            }];
        return cell;
        
        
        
    }
    else
    {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"commentCell" forIndexPath:indexPath];
        
        NSArray *array=[[json objectAtIndex:_numberOfSection] objectForKey:@"answers"];
        NSDictionary *dict=[array objectAtIndex:indexPath.row-1];
        
        NSString *imageUrl=[NSString stringWithFormat:@"%@%@",imageLink,[dict objectForKey:@"user_profile_image"]];
        
        
        NSString *answer_correctOrincorrect=[dict objectForKey:@"answer_correct"];
        
        NSLog(@"%@",answer_correctOrincorrect);
        
        if ([answer_correctOrincorrect isEqualToString:@"1"]) {
            cell.answerImageView.image=[UIImage imageNamed:@"righ.png"];
        }
        else
        {
            cell.answerImageView.image=[UIImage imageNamed:@"multipl.png"];
        }
        
        
        cell.commentCellProfileImageView.layer.cornerRadius = cell.commentCellProfileImageView.frame.size.width / 2;
        cell.commentCellProfileImageView.layer.borderWidth = 1.0f;
        cell.commentCellProfileImageView.layer.borderColor = [UIColor grayColor].CGColor;
        cell.commentCellProfileImageView.clipsToBounds = YES;
        
        
        cell.commentCellProfileName.text=[dict objectForKey:@"user_firstname"];
        cell.commentCellComment.text=[dict objectForKey:@"answer"];
        [cell.commentCellProfileImageView sd_setImageWithURL:[NSURL URLWithString:imageUrl]
                                            placeholderImage:[UIImage imageNamed:@"bill-gates.jpg"]
                                                     options:SDWebImageRefreshCached];
        
        
        
        
        
        return cell;
    }
    
    
}


//resize image
-(UIImage*)imageWithImage: (UIImage*) sourceImage scaledToWidth: (float) i_width
{
    
    float oldWidth = sourceImage.size.width;
    float scaleFactor = i_width / oldWidth;
    
    float newHeight = sourceImage.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

//resize nsstring
-(NSMutableAttributedString*) changeTheattributeOfAString:(NSString *)string
{
    
    NSMutableAttributedString *hintText = [[NSMutableAttributedString alloc] initWithString:string];
    
    [hintText setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Helvetica Neue" size:15.0f], NSForegroundColorAttributeName:[UIColor blueColor]} range:NSMakeRange(0,6)];
    
    [hintText setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Helvetica Neue" size:13.0f]} range:NSMakeRange(6, hintText.length - 6)];
    
    return hintText;
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
