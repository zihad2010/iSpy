//
//  IYTextField.m
//
//  Created by Minhaz on 08/12/16
//  The code is copy from YoshikoTextField
//

#import "IYTextField.h"

@interface IYTextField (){
    //    UILabel *self.self.placeholder;
    CGFloat inset;
    
    CALayer *borderTextField;
    CGPoint textFieldInset,placeholderInset;
}


@property (nonatomic) CGFloat placeholderHeight;

@property (strong ,nonatomic) NSString *placeholderText;

@end


@implementation IYTextField
@synthesize placeHolderLabel;


//validation flag synthesize
@synthesize validEmail, validName, maxLen, minLen, required;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    
    borderTextField=[[CALayer alloc] init];
    borderTextField.frame = CGRectMake(0, 25, self.bounds.size.width, self.bounds.size.height-40);
    borderTextField.borderColor=[UIColor clearColor].CGColor;
    borderTextField.borderWidth=1.5;
    borderTextField.backgroundColor=[UIColor grayColor].CGColor;
    [self.layer addSublayer:borderTextField];
    [self addPlaceHolderLabel];
    
    //Error Label
    [self addErrorLabel];
    
    
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    self.delegate = self;
    if (self) {
        
        //******** FOR PLACE HOLDER ******
        //
        self.placeHolderLabel = [[UILabel alloc] init];
        
        //Set empty label for text
        self.placeholderText = @"";
        
        //now set the empty label
        self.placeHolderLabel.text = self.placeholderText;
        self.placeHolderLabel.textColor = [UIColor whiteColor];
        self.placeHolderLabel.backgroundColor=[UIColor clearColor];
        self.placeHolderLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14.0];
        self.placeHolderLabel.textAlignment = NSTextAlignmentLeft;
        
        
        placeholderInset = CGPointMake(6, 17);
        textFieldInset = CGPointMake(6, 17);
        
        
        self.backgroundColor=[UIColor clearColor];
        
        
        //******** FOR PLACE VALIDATION ******
        //
        self.valid = YES; //default true
        self.required = NO; //Not requird
        self.minLen = 0; //0: No limit
        self.maxLen = 0; //0: No limit
        self.validEmail = NO;
        self.validName = NO;
        
        //Error message
        self.errorLabel = [[UILabel alloc] init];
        self.errorLabel.textColor = [UIColor colorWithRed:1 green:0.4 blue:0 alpha:1];
        self.errorLabel.backgroundColor=[UIColor clearColor];
        self.errorLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:11.0];
        self.errorLabel.textAlignment = NSTextAlignmentRight;
        
        
        
    }
    
    return self;
}



-(void)setPlaceholderHeight:(CGFloat)placeholderHeight{
    
}


//calculate the height of the place holder from front size
-(CGFloat)placeholderHeight
{
    UIFont *fontOfText=[UIFont fontWithName:@"HelveticaNeue" size:self.font.pointSize*0.7];
    return placeholderInset.y+fontOfText.lineHeight;
}


//Add place holder label as a sub view of text field
- (void)addPlaceHolderLabel
{
    self.placeHolderLabel.frame=CGRectMake(textFieldInset.x*2, (self.bounds.size.height-15)/2, self.bounds.size.width-textFieldInset.x*4, 20);
    [self addSubview:self.placeHolderLabel];
    
}

//Add place holder label as a sub view of text field
- (void)addErrorLabel
{
    //self.errorLabel.frame=CGRectMake(textFieldInset.x*2, 0, self.bounds.size.width-textFieldInset.x*4, 20);
    [self.errorLabel setText:@""];
    [self.errorLabel setTextColor:[UIColor colorWithRed:1 green:0.4 blue:0 alpha:1]];
    self.errorLabel.frame=CGRectMake(self.frame.origin.x, self.bounds.size.height-15, self.bounds.size.width, 20);
    [self addSubview:self.errorLabel];
    
}

//Set the text field label
-(void)setLabelText :(NSString *) labelText
{
    self.placeHolderLabel.text = labelText;
    self.placeholderText = labelText;
}


-(void)setBorderLayer{
    
}


-(CGRect)textRectForBounds:(CGRect)bounds{
    return CGRectOffset(self.bounds,textFieldInset.x*2, (self.bounds.size.height-15)/2-textFieldInset.y*2);
}


-(CGRect)editingRectForBounds:(CGRect)bounds{
    return [self textRectForBounds:bounds];
}


//When text field will be edited we have to
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
    //Animation for place holder transition when we start editing
    [UIView transitionWithView:self.placeHolderLabel duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        
        self.placeHolderLabel.frame=CGRectMake(textFieldInset.x*2, 0, self.bounds.size.width-textFieldInset.x*4, 20);
        [self.placeHolderLabel setText:[self.placeholderText uppercaseString]];
        [self.placeHolderLabel setTextColor:[UIColor colorWithRed:1 green:0.4 blue:0 alpha:1]];
        borderTextField.backgroundColor=[UIColor whiteColor].CGColor;
        borderTextField.borderColor=[UIColor colorWithRed:1 green:0.4 blue:0 alpha:1].CGColor;
        
        
    }
                    completion:^(BOOL finished) {
                        
                        //Transiton completed so we can do something here
                        
                    }];
    
    
    //when begin we have to set the validaiton to true and clear the message
    [self resetValidateStatus];
    
    
}


-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    //TODO backspace need to be allowed
    
    //If max len set and total lenght is gerterthen the mex len do not display this char
    if(self.maxLen != 0 && self.maxLen < textField.text.length){
        return FALSE;
    }
    
    
    return TRUE;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self resignFirstResponder];
    return YES;
}

//Text field finished editting so we should triger validation
-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    
    //If text field empty we will animate back the placeholder
    if([textField.text isEqual:@""]){
        
        [UIView transitionWithView:self.placeHolderLabel duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            [self.placeHolderLabel setTextColor:[UIColor whiteColor]];
            self.placeHolderLabel.frame=CGRectMake(textFieldInset.x*2, (self.bounds.size.height-15)/2, self.bounds.size.width-textFieldInset.x*4, 20);
            [self.placeHolderLabel setText:[self.placeholderText capitalizedString]];
            borderTextField.backgroundColor=[UIColor grayColor].CGColor;
            borderTextField.borderColor=[UIColor clearColor].CGColor;
            
            
        } completion:^(BOOL finished) {
            
            
            
        }];
        
        //required field validation
        [self validateRequired];
    }
    else{
        
        //We have some input now call validation
        [self validateInput];
    }
    
    
    if(!self.valid){
        
        self.errorLabel.text = [self.errorMessage uppercaseString];
        NSLog(@"%@", self.errorMessage);
    }
    
}

//validate inputs based on the validation flag was set
-(void)validateInput
{
    
    //For min len
    if(self.minLen>0){
        [self validateMinLen: self.text];
    }
    
    //For email
    if(self.validEmail){
        
        //fromLabel.text = [NSString stringWithFormat:@"Enter a valide Email"];
        [self validateEmail: self.text];
    }
    
}

//we have to reset the validate once user start typing
-(void)resetValidateStatus
{
    self.valid = TRUE;
    self.errorMessage = @"";
    self.errorLabel.text = @"";
    
    //TODO if we display in label we have to reset
}


//validate if a fied is required
-(void)validateRequired
{
    if(self.required){
        self.errorMessage = [NSString stringWithFormat:@"%@ is required",self.placeholderText];
        self.valid = FALSE;
    }
}

- (void)validateEmail:(NSString *)str
{
    //only check if the field is still valid
    if(self.valid){
        
        NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        
        
        self.valid=[emailTest evaluateWithObject:str];
        
        if(self.valid==FALSE){
            self.errorMessage = @"Invalid email address";
        }
    }
    
}

- (void)validateMinLen:(NSString *)str
{
    //only check if the field is still valid
    if(self.valid){
        
        if([str length]<self.minLen){
            
            self.errorMessage = [NSString stringWithFormat:@"%@ must be at least %d characters",self.placeholderText, self.minLen];
            
            self.valid=FALSE;
        }
    }
    
}


@end


