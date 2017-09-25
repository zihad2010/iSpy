//
//  downloadDataWithAFNetworking.m
//  iSpy
//
//  Created by zihad on 12/14/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "downloadDataWithAFNetworking.h"
#import "AFHTTPSessionManager.h"
@implementation downloadDataWithAFNetworking

- (instancetype)init
{
    self = [super init];
    if (self) {
       // NSLog(@"call init");
    }
    
    return self;
}

-(NSDictionary *)getDataFromServer:(NSString *)url andParameter:(NSDictionary *)paramerer
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:url parameters:paramerer progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSLog(@"JSON: %@", responseObject);
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
    }];
    
    
    return  0;
}
-(NSDictionary *)PostDataOnServer:(NSString *)url andParameter:(NSDictionary *)paramerer
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:url parameters:paramerer progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSLog(@"JSON: %@", responseObject);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
    }];
    
    return  0;
    
}


@end
