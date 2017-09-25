//
//  ViewController.m
//  iSpyTimeLine
//
//  Created by zihad on 11/22/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "ViewController.h"
#import "IYAllAnswerViewController.h"

#import "CustomTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "SettingsViewController.h"
#import "AccountsViewController.h"
#import "GroupChatViewController.h"
#define imageLink @"http://bthi.co.uk/media/"
@interface ViewController ()
{
    NSArray *cellArray;
    NSArray *dataArray;
    CustomTableViewCell *cell;
    NSArray *json;
    NSDictionary *dataDict;
}


//@property (strong,nonatomic) NSArray *menuItems;
//@property (copy, nonatomic) NSArray *overflowItems;
@property (strong,nonatomic) NSMutableArray *sectionItems;
@property (strong,nonatomic) NSMutableArray *allObjectOfSection;
@property (strong,nonatomic) NSMutableArray *totalCommentInSection;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cellArray = @[@"profileCell", @"postImageCell", @"commentCell"];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"timeLineData" ofType:@"plist"];
    dataArray = [NSArray arrayWithContentsOfFile:path];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data (1)" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    //  NSLog(@"%@",[[json objectAtIndex:2] objectForKey:@"ispy"]);
    dataDict= [[json objectAtIndex:3] objectForKey:@"ispy"];
    //  NSLog(@"%@",[dataDict objectForKey:@"user_firstname"]);
    
    
    _allObjectOfSection=[NSMutableArray new];
    
    for (int i=0; i<json.count; i++)
    {
        _sectionItems=[NSMutableArray new];
        [_sectionItems addObject:[[json objectAtIndex:i] objectForKey:@"ispy"]];
        
        NSArray *array=[[json objectAtIndex:i] objectForKey:@"answers"];
        NSLog(@"test by zihad:%ld",array.count);
        
        if (array.count>=3) {
            _totalCommentInSection=[NSMutableArray new];
            [_totalCommentInSection addObject:[array objectAtIndex:[array count]-3]];
            [_totalCommentInSection addObject:[array objectAtIndex:[array count]-2]];
            [_totalCommentInSection addObject:[array objectAtIndex:[array count]-1]];
            [_sectionItems addObjectsFromArray:_totalCommentInSection];
        } else {
            [_sectionItems addObjectsFromArray:[[json objectAtIndex:i] objectForKey:@"answers"]];
        }
        [_allObjectOfSection addObject:_sectionItems];
    }
    
    NSLog(@"%ld",[_allObjectOfSection  count]);
    
    //  NSLog(@"%@",[_allObjectOfSection objectAtIndex:0]);
    
    
    
    //for dynamic cell
    self.tableView.estimatedRowHeight = 80;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView setNeedsLayout];
    [self.tableView layoutIfNeeded];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _allObjectOfSection.count;//[dataArray count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5; // you can have your own choice, of course
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [[_allObjectOfSection objectAtIndex:section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    

    NSArray *array=[_allObjectOfSection objectAtIndex:indexPath.section];
    
    if (indexPath.row ==0)
    {
        
        cell = [_tableView dequeueReusableCellWithIdentifier:@"postImageCell" forIndexPath:indexPath];
        NSDictionary *dict=[array objectAtIndex:0];
        
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
        if (array.count==4 && indexPath.row==3) {
            
            cell = [_tableView dequeueReusableCellWithIdentifier:@"commentCellsecond" forIndexPath:indexPath];
            NSDictionary *dict=[array objectAtIndex:indexPath.row];
            
            NSString *imageUrl=[NSString stringWithFormat:@"%@%@",imageLink,[dict objectForKey:@"user_profile_image"]];
            
            cell.commentCellProfileImageView.layer.cornerRadius = cell.commentCellProfileImageView.frame.size.width / 2;
            cell.commentCellProfileImageView.layer.borderWidth = 1.0f;
            cell.commentCellProfileImageView.layer.borderColor = [UIColor grayColor].CGColor;
            cell.commentCellProfileImageView.clipsToBounds = YES;
            
            
            cell.commentCellProfileName.text=[dict objectForKey:@"user_firstname"];
            cell.commentCellComment.text=[dict objectForKey:@"answer"];
            
            NSString *answer_correctOrincorrect=[dict objectForKey:@"answer_correct"];
            
            NSLog(@"%@",answer_correctOrincorrect);
            
            if ([answer_correctOrincorrect isEqualToString:@"1"]) {
                cell.answerImageView.image=[UIImage imageNamed:@"righ.png"];
            }
            else
            {
                cell.answerImageView.image=[UIImage imageNamed:@"multipl.png"];
            }
            
            
            [cell.commentCellProfileImageView sd_setImageWithURL:[NSURL URLWithString:imageUrl]
                                                placeholderImage:[UIImage imageNamed:@"bill-gates.jpg"]
                                                         options:SDWebImageRefreshCached];
            
            cell.moreButtonTag.tag=indexPath.section;
        }
        else
        {
            
            cell = [_tableView dequeueReusableCellWithIdentifier:@"commentCell" forIndexPath:indexPath];
            NSDictionary *dict=[array objectAtIndex:indexPath.row];
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
            
            
            
        }
        
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

//create section data from

-(NSArray *) createSectionItemsFromData:(NSDictionary *) dict
{
    
    NSLog(@"%@",[dict objectForKey:@"ispy"]);
    
    return 0;
}


-(void)singleTapping:(UIGestureRecognizer *)recognizer {
    NSLog(@"image clicked");
}

- (IBAction)menuButtonPress:(id)sender {

}

- (IBAction)moreCommentButtonPress:(id)sender {
    
   [self performSegueWithIdentifier:@"IYShowAllCommentViewController" sender:sender];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"IYShowAllCommentViewController"]) {
        
        UIButton *button = (UIButton*)sender;
        NSLog(@"more button press:%ld",button.tag);

     IYAllAnswerViewController *destViewController = segue.destinationViewController;
        destViewController.numberOfSection = button.tag;
    }
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    //self.navigationController.navigationBar.topItem.title =@"";
    
    //something here
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
