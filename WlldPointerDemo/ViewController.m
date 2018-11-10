//
//  ViewController.m
//  WlldPointerDemo
//
//  Created by 程薇 on 2018/11/10.
//  Copyright © 2018 程薇. All rights reserved.
//

#import "ViewController.h"
#import "NetworkService.h"

@interface ViewController ()<NetworkServiceDelegate>

@property (nonatomic,strong) NetworkService *networkService;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.networkService = [[NetworkService alloc] init];
    self.networkService.delegate = self;
    [self.networkService startRequest];
    
}

-(void)requestFinished
{
//    self.view.backgroundColor = UIColor.whiteColor;
    [self refreshData];
}

-(void)refreshData
{
    
}


- (void)dealloc
{
    
}

@end
