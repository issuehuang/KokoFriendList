//
//  ViewController.m
//  KoKoFriendList
//
//  Created by User1 on 2021/10/12.
//

#import "ViewController.h"
#import "APIManager.h"
@interface ViewController ()

@end

NSString*mainUrl = @"https://dimanyen.github.io/man.json";
NSString*friendListOne = @"https://dimanyen.github.io/friend1.json";
NSString*friendListTwo = @"https://dimanyen.github.io/friend2.json";
NSString*firendListWithInvite = @"https://dimanyen.github.io/friend3.json";
NSString*friendListWithNoData = @"https://dimanyen.github.io/friend4.json";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *bbtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icNavPinkScan"]
                                                             style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:nil];
    UIBarButtonItem * lbttnOne = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icNavPinkTransfer"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem * lbttnTwo = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icNavPinkWithdraw"] style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItems = @[lbttnOne,lbttnTwo];
    self.navigationItem.rightBarButtonItem = bbtn;
    self.btnContainerView.layer.cornerRadius = self.btnContainerView.frame.size.height / 2;
    self.btnContainerView.clipsToBounds = YES;
    NSDictionary * dict;
    [[APIManager shared]requestGetURL:mainUrl parameters:dict success:^(NSDictionary *response) {
        self.userDetail = [[MainUserDetailModel alloc] initWithData:response];
        self.userIDLabel.text = self.userDetail.name;
        [self.kokoIDBtn setTitle:self.userDetail.kokoid forState:UIControlStateNormal];
    } failure:^(NSError *error) {
        
    }];
    
   
}


@end
