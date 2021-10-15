//
//  APIManager.m
//  KoKoFriendList
//
//  Created by User1 on 2021/10/14.
//

#import <Foundation/Foundation.h>
#import "APIManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation APIManager : NSObject


+ (APIManager *)shared {
    static APIManager *singleton = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        singleton = [[APIManager alloc] init];
    });
    
    return singleton;
}



-(void) requestGetURL:(NSString *)_code parameters:(NSDictionary *)_params success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [[AFHTTPResponseSerializer alloc] init];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"content-type"];
    NSError *error;
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET"
                                                                             URLString:_code
                                                                            parameters:nil
                                                                                 error:&error];
    [[manager dataTaskWithRequest:req
                   uploadProgress:nil
                 downloadProgress:nil
                completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                    
                    if (error) {
                        
                    }
                    else {
                       
                        NSDictionary *response = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
                       
                        if (response != nil) {
                            NSLog(@"==WHATIGOT %@",response);
                            
                            
                            success(response);
                        }
                        
                    }
                    
                }] resume];
    
}

@end
