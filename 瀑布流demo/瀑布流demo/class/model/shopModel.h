//
//  shopModel.h
//  瀑布流demo
//
//  Created by 王晨辉 on 2018/1/9.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface shopModel : NSObject
@property(nonatomic,copy)NSString * img;
@property(nonatomic,copy)NSString * price;
@property(nonatomic,assign)CGFloat w;
@property(nonatomic,assign)CGFloat h;
@end
