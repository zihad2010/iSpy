//
//  downloadDataWithAFNetworking.h
//  iSpy
//
//  Created by zihad on 12/14/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface downloadDataWithAFNetworking : NSObject

@property(strong,nonatomic) NSDictionary *downloadedData;

-(id)getDataFromServer:(NSString *)url andParameter:(NSDictionary *)paramerer;
-(id)PostDataOnServer:(NSString *)url andParameter:(NSDictionary *)paramerer;
@end
