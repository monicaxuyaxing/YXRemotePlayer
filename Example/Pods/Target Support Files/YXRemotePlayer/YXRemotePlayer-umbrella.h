#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSURL+SZ.h"
#import "YXAudioDownLoader.h"
#import "YXRemoteAudioFile.h"
#import "YXRemotePlayer.h"
#import "YXRemoteResourceLoaderDelegate.h"

FOUNDATION_EXPORT double YXRemotePlayerVersionNumber;
FOUNDATION_EXPORT const unsigned char YXRemotePlayerVersionString[];

