//
//  APIManager.h
//  KoKoFriendList
//
//  Created by User1 on 2021/10/14.
//

#ifndef APIManager_h
#define APIManager_h


#endif /* APIManager_h */

#import "MainUserDetailModel.h"
@interface APIManager : NSObject
+ (APIManager *)shared;

-(void) requestGetURL:(NSString *)_code parameters:(NSDictionary *)_params success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure;
@property (nonatomic,strong)  MainUserDetailModel*userDetail;

@end

