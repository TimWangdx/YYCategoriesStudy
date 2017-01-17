//
//  TWUIImageViewController.m
//  YYCategoriesStudy
//
//  Created by HaKim on 17/1/17.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "TWUIImageViewController.h"

@interface TWUIImageViewController ()

@end

@implementation TWUIImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self runCase];
}

- (void)runCase{
    [self testCase1];

    [self testCase2];
}

- (void)testCase1{
    UIImage *image = [UIImage imageNamed:@"1"];
    UIImage *test1 = [image imageByCropToRect:CGRectMake(0, 0, 1000, 1000)];
    NSLog(@"test1 = %@",test1);
}


- (void)testCase2{
    UIImage *image = [UIImage imageNamed:@"1"];
    UIImage *test1 = [image imageByInsetEdge:UIEdgeInsetsMake(10, 10, 10, 10) withColor:[UIColor lightGrayColor]];
    NSLog(@"test1 = %@",test1);
}

@end
