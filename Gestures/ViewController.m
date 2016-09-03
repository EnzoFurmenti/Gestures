//
//  ViewController.m
//  Gestures
//
//  Created by EnzoF on 01.09.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIImageView *imageView;

@property (assign, nonatomic)CGPoint offsetPoint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds), CGRectGetWidth(self.view.bounds) / 4 , CGRectGetHeight(self.view.bounds) / 4);
    self.imageView = [[UIImageView alloc] initWithFrame:rect];
    [self.view addSubview:self.imageView];
    self.imageView.backgroundColor = [UIColor clearColor];
    self.imageView.center = self.view.center;
    UIImage *imageStep1 = [UIImage imageNamed:@"step-1.png"];
    UIImage *imageStep2 = [UIImage imageNamed:@"step-2.png"];
    UIImage *imageStep3 = [UIImage imageNamed:@"step-3.png"];
    UIImage *imageStep4 = [UIImage imageNamed:@"step-4.png"];
    UIImage *imageStep5 = [UIImage imageNamed:@"step-5.png"];
    NSArray *arrayImage = [[NSArray alloc] initWithObjects:imageStep1,imageStep2,imageStep3,imageStep4,imageStep5, nil];
    self.imageView.animationImages = arrayImage;
    self.imageView.animationDuration = 1.f;
    [self.imageView startAnimating];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(actionTap:)];
    [self.view addGestureRecognizer:tapGesture];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark -Action-

-(void)actionTap:(UITapGestureRecognizer*)tap{
    CGPoint tapPoint = [tap locationInView:self.view];
    
    [UIView animateWithDuration:2.f
                          delay:0.f
                        options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.imageView.center = tapPoint;

                     } completion:^(BOOL finished) {
                         NSLog(@"canceled finished %d",finished);
                     }];
}
@end
