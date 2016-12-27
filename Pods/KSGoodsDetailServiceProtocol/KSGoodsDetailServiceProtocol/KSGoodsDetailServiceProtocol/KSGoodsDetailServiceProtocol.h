//
//  KSGoodsDetailServiceProtocol.h
//  KSGoodsDetailServiceProtocol
//
//  Created by pingyandong on 2016/12/26.
//  Copyright © 2016年 Kingsum. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KSGoodsDetailServiceProtocol <NSObject>
@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
