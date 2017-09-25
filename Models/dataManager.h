//
//  dataManager.h
//  iSpy
//
//  Created by zihad on 12/14/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "downloadDataWithAFNetworking.h"
@interface dataManager : NSObject
@property (strong,nonatomic) downloadDataWithAFNetworking *downloadData;
-(BOOL)checkValidUserEmail:(NSString *) UserEmail andPasswoard:(NSString *)userPasswoard;
@end
