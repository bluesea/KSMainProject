//
//  ViewController.m
//  KSMainProject
//
//  Created by pingyandong on 2016/12/26.
//  Copyright © 2016年 Kingsum. All rights reserved.
//

#import "ViewController.h"
#import <KSProtocolModuleManager/KSProtocolModuleManager.h>
#import <KSGoodsDetailServiceProtocol/KSGoodsDetailServiceProtocol.h>

@interface ViewController ()
@property (nonatomic, strong) UIButton *goodsButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    
    [self.view addSubview:self.goodsButton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.goodsButton.frame = CGRectMake(0, 0, 100, 100);
    self.goodsButton.center = self.view.center;
}

#pragma mark - event
- (void)didClickGoodsButton:(UIButton *)button
{
    id<KSGoodsDetailServiceProtocol> goodsServiceProvide = [KSProtocolModuleManager serviceProvideForProtocol:@protocol(KSGoodsDetailServiceProtocol)];
    UIViewController *goodsDetailVC = [goodsServiceProvide goodsDetailViewControllerWithGoodsId:@"123" goodsName:@"农夫山泉矿泉水"];
    [self.navigationController pushViewController:goodsDetailVC animated:YES];
    
}


#pragma mark - getters
- (UIButton *)goodsButton
{
    if (_goodsButton == nil) {
        _goodsButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_goodsButton setTitle:@"A商品" forState:UIControlStateNormal];
        [_goodsButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_goodsButton addTarget:self action:@selector(didClickGoodsButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goodsButton;
}



@end
