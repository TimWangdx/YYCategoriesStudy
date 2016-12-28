//
//  TWCALayerViewController.m
//  YYCategoriesStudy
//
//  Created by HaKim on 16/12/28.
//  Copyright © 2016年 Tim. All rights reserved.
//

#import "TWCALayerViewController.h"
#import "TWOptionModel.h"
#import "YYCategories.h"

@interface TWCALayerViewController ()

@end

@implementation TWCALayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self commonInit];
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
}

- (void)testCase1{
    UIImage *image = [self.view.layer snapshotImage];
    NSLog(@"image = %@",image);
    
    NSData *imagedata=UIImagePNGRepresentation(image);
    [imagedata writeToFile:@"/Users/hikim/Desktop/testCase1.png" atomically:YES];
}


#pragma mark - UI

- (void)commonInit{
    self.navigationItem.title = self.optionModel.title;
    
}

@end
