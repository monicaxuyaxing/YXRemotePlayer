//
//  YXAudioDownLoader.h
//  YXRemotePlayer_Example
//
//  Created by 徐亚杏 on 2019/3/25.
//  Copyright © 2019 monicaFighting. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YXAudioDownLoaderDelegate <NSObject>

- (void)downLoading;

@end


@interface YXAudioDownLoader : NSObject


@property (nonatomic, weak) id<YXAudioDownLoaderDelegate> delegate;

@property (nonatomic, assign) long long totalSize;
@property (nonatomic, assign) long long loadedSize;
@property (nonatomic, assign) long long offset;
@property (nonatomic, strong) NSString *mimeType;


- (void)downLoadWithURL:(NSURL *)url offset:(long long)offset;


@end
