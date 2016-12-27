//
//  KSGoodsDetailServiceProvide.m
//  KSGoodsDetail
//
//  Created by pingyandong on 2016/12/26.
//  Copyright © 2016年 Kingsum. All rights reserved.
//

#import "KSGoodsDetailServiceProvide.h"
#import <KSGoodsDetailServiceProtocol/KSGoodsDetailServiceProtocol.h>
#import <KSProtocolModuleManager/KSProtocolModuleManager.h>
#import "KSGoodsDetailViewController.h"

@interface KSGoodsDetailServiceProvide ()<KSGoodsDetailServiceProtocol>

@end

@implementation KSGoodsDetailServiceProvide
+ (void)load
{
    [KSProtocolModuleManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(KSGoodsDetailServiceProtocol)];

}


- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName
{
    KSGoodsDetailViewController *goodsDetailVC = [[KSGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}
@end
