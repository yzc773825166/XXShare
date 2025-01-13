//
//  XXShareTool.m
//  XXShareSDK
//
//  Created by YZC on 2024/12/26.
//

#import "XXShareTool.h"
#import <UMCommon/UMCommon.h>
#import <UMShare/UMShare.h> // 将framework改为.a

typedef enum : NSUInteger {
    iOSShareStatusType_Success,
    iOSShareStatusType_Error,
    iOSShareStatusType_Cancel,
} iOSShareStatusType;

@interface XXShareTool ()

@property (nonatomic, strong) NSString *sdkSecret;

@end

@implementation XXShareTool

+ (instancetype)shareTool {
    static XXShareTool *tool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tool = [[XXShareTool alloc] init];
    });
    return tool;
}

// 配置友盟 appkey
+ (void)configureInitUMShare:(NSString *)um_key {
     [UMConfigure initWithAppkey:um_key channel:@"App Store"];
}
// 配置通用链接
+ (void)configureUniversalLinkWithWechatLink:(NSString *)wechatLink qqLink:(NSString *)qqLink sinaLink:(NSString *)sinaLink {
    [UMSocialGlobal shareInstance].universalLinkDic = @{
        @(UMSocialPlatformType_WechatSession): wechatLink,
        @(UMSocialPlatformType_QQ): qqLink,
        @(UMSocialPlatformType_Sina): sinaLink
    };
}

@end
