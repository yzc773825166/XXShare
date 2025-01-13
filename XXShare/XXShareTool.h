//
//  XXShareTool.h
//  XXShareSDK
//
//  Created by YZC on 2024/12/26.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXShareTool : NSObject

// 配置友盟 appkey
+ (void)configureInitUMShare:(NSString *)um_key;
// 配置通用链接
+ (void)configureUniversalLinkWithWechatLink:(NSString *)wechatLink qqLink:(NSString *)qqLink sinaLink:(NSString *)sinaLink;

@end

NS_ASSUME_NONNULL_END
