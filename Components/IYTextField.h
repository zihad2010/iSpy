//
//  YoshikoTextField.h
//  BWWalkthroughExample
//
//  Created by mukesh mandora on 24/07/15.
//  Copyright (c) 2015 Yari D'areglia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IYTextField : UITextField<UITextFieldDelegate>

//Label to display text field place holder
@property (strong ,nonatomic) UILabel *placeHolderLabel;

//Label to display error
@property (strong ,nonatomic) UILabel *errorLabel;

//Required field Flag
@property (nonatomic, assign) bool required;

//Validation flags
@property (nonatomic, assign) bool validEmail;
@property (nonatomic, assign) bool validName;

//Lenght validation
@property (nonatomic, assign) int maxLen;
@property (nonatomic, assign) int minLen;

//validation status to determind if the field is valid or not 
@property (nonatomic, assign) bool valid;

//Error message will be store on this for display
@property (nonatomic, strong) NSString *errorMessage;

//***********************//
//Functions
//**********************//


//Set the text field label
-(void)setLabelText :(NSString *) labelText ;



@end
