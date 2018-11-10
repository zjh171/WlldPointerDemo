//
//  NetworkService.m
//  WlldPointerDemo
//
//  Created by 程薇 on 2018/11/10.
//  Copyright © 2018 程薇. All rights reserved.
//

#import "NetworkService.h"

@interface NetworkService ()

//@property (nonatomic, strong) NSInvocationOperation *op;
@property (nonatomic, strong) NSOperationQueue *opq;

@end

@implementation NetworkService



-(void)startRequest
{
    NSInvocationOperation *op = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(doTask) object:nil];
    
    self.opq = [[NSOperationQueue alloc] init];
    [self.opq addOperation:op];
}


-(void)doTask
{
    sleep(5);
    [self performSelectorOnMainThread:@selector(callBack) withObject:nil waitUntilDone:YES ];
}

-(void) callBack
{
    [self.delegate requestFinished];

}


@end
