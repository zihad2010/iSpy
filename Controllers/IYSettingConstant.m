//
//  IYSettingConstant.m
//  iSpy
//
//  Created by Amad Uddin on 12/19/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "IYSettingConstant.h"

static NSArray *_titles_1;
static NSArray *settingImg;

@implementation IYSettingConstant

+ (NSArray *)titles
{
    if(!_titles_1){
    
    //static NSArray *_titles;

        _titles_1 = @[
                    @"",
                    @"Account",
                    @"Chats",
                    @"Notification",
                    @"Data Usage",
                    @"Contacts",
                    @"About and help"
                    ];
    }
    
    return _titles_1;
}

+(NSArray *)settingImgm {

    if (!settingImg) {
        settingImg = @[@"default.jpg",
                     @"key.png",
                     @"key.png",
                     @"key.png",
                     @"key.png",
                     @"key.png",
                     @"key.png"];
    }

    return settingImg;

}


@end
