//
//  ViewController.m
//  Gestures
//
//  Created by EnzoF on 01.09.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds), CGRectGetWidth(self.view.bounds) /2 , CGRectGetHeight(self.view.bounds) /2);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    [self.view addSubview:imageView];
    imageView.backgroundColor = [UIColor greenColor];
    imageView.center = self.view.center;
    UIImage *imageStep1 = [UIImage imageNamed:@"step-1.png"];
    UIImage *imageStep2 = [UIImage imageNamed:@"step-2.png"];
    UIImage *imageStep3 = [UIImage imageNamed:@"step-3.png"];
    UIImage *imageStep4 = [UIImage imageNamed:@"step-4.png"];
    UIImage *imageStep5 = [UIImage imageNamed:@"step-5.png"];
    NSArray *arrayImage = [[NSArray alloc] initWithObjects:imageStep1,imageStep2,imageStep3,imageStep4,imageStep5, nil];
    imageView.animationImages = arrayImage;
    imageView.animationDuration = 2.f;
    [imageView startAnimating];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
