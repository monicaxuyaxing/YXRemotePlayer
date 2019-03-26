//
//  NSURL+SZ.m
//  YXRemotePlayer
//
//  Created by monicaFighting on 2018/5/14.
//  Copyright (c) 2018 monicaFighting. All rights reserved.
//

#import "NSURL+SZ.h"

@implementation NSURL (SZ)

- (NSURL *)streamingURL {
    // http://xxxx
    NSURLComponents *compents = [NSURLComponents componentsWithString:self.absoluteString];
    compents.scheme = @"sreaming";
    return compents.URL;
    
    
}


- (NSURL *)httpURL {
    NSURLComponents *compents = [NSURLComponents componentsWithString:self.absoluteString];
    compents.scheme = @"http";
    return compents.URL;

    
}

@end
