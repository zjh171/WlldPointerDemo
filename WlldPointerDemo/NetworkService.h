//
//  NetworkService.h
//  WlldPointerDemo
//
//  Created by 程薇 on 2018/11/10.
//  Copyright © 2018 程薇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NetworkServiceDelegate <NSObject>

-(void)requestFinished;

@end

@interface NetworkService : NSObject

-(void)startRequest;

@property (nonatomic, assign) id<NetworkServiceDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
