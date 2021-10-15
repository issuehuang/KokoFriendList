//
//  ViewController.h
//  KoKoFriendList
//
//  Created by User1 on 2021/10/12.
//

#import <UIKit/UIKit.h>
#import "MainUserDetailModel.h"
@interface ViewController : UIViewController
@property (nonatomic,strong)  MainUserDetailModel*userDetail;
@property (weak, nonatomic) IBOutlet UILabel *userIDLabel;
@property (weak, nonatomic) IBOutlet UIButton *kokoIDBtn;
@property (weak, nonatomic) IBOutlet UIView *btnContainerView;



@end

