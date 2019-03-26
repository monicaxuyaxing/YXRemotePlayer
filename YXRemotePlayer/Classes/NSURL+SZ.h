//
//  NSURL+SZ.h
//  YXRemotePlayer
//
//  Created by monicaFighting on 2018/5/14.
//  Copyright (c) 2018 monicaFighting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (SZ)


/**
 获取streaming协议的url地址
 */
- (NSURL *)streamingURL;


- (NSURL *)httpURL;

@end
