//
//  MainUserDetailModel.h
//  KoKoFriendList
//
//  Created by User1 on 2021/10/15.
//

#ifndef MainUserDetailModel_h
#define MainUserDetailModel_h


#endif /* MainUserDetailModel_h */

@interface MainUserDetailModel : NSObject
@property (nonatomic, strong) NSArray *userDetail;
@property (nonatomic, strong) NSString *kokoid;
@property (nonatomic, strong) NSString *name;


- (instancetype)initWithData:(NSDictionary *)data;

@end
