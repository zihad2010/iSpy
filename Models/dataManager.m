//
//  dataManager.m
//  iSpy
//
//  Created by zihad on 12/14/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "dataManager.h"
#define sendEmailAndPasswordInHost @"http://new.iosdevbd.com/cng/welcome/passenger_register"
@implementation dataManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _downloadData=[downloadDataWithAFNetworking new];
    }
    return self;
}

-(BOOL)checkValidUserEmail:(NSString *) UserEmail andPasswoard:(NSString *)userPasswoard
{
    NSDictionary *parameters = @{@"email":UserEmail};
    
    NSDictionary *jsonData= [_downloadData getDataFromServer:sendEmailAndPasswordInHost andParameter:parameters];
    return @"";
}
@end
