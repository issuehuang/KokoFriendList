//
//  MainUserDetailModel.m
//  KoKoFriendList
//
//  Created by User1 on 2021/10/15.
//

#import <Foundation/Foundation.h>
#import "MainUserDetailModel.h"
@implementation MainUserDetailModel

- (instancetype)initWithData:(NSDictionary *)data{
    self = [super init];
    if (self){
        _userDetail = data[@"response"];
        _kokoid = self.userDetail.firstObject[@"kokoid"];
        _name = self.userDetail.firstObject[@"name"];
    }
    return self;
}


@end
