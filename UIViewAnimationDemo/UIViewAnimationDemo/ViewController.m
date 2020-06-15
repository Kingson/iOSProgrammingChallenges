//
//  ViewController.m
//  UIViewAnimationDemo
//
//  Created by Kingson on 6/30/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (nonatomic, assign) CGRect viewFrame;
- (void)changeFrame;
- (void)blockAni5;
- (void)animationGroup;
@end

@implementation ViewController

- (void)animationGroup {
    [self changeFrame];
    [self blockAni5];
}

- (void)changeFrame {
    self.viewFrame = self.leftView.frame;
    [UIView beginAnimations:@"FrameAni" context:nil];
    [UIView setAnimationDuration:1.0f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(startAni:)];
    [UIView setAnimationDidStopSelector:@selector(stopAni:)];
    [UIView setAnimationRepeatCount:4];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.leftView.frame = self.topView.frame;
    [UIView commitAnimations];
}

- (void)blockAni5 {
//    self.centerShow.image = nil;
    [UIView animateKeyframesWithDuration:9.0 delay:0.f options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:1.0 / 4 animations:^{
            self.rightView.backgroundColor = [UIColor colorWithRed:0.9475 green:0.1921 blue:0.1746 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:1.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.rightView.backgroundColor = [UIColor colorWithRed:0.1064 green:0.6052 blue:0.0334 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:2.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.rightView.backgroundColor = [UIColor colorWithRed:0.1366 green:0.3017 blue:0.8411 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:3.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.rightView.backgroundColor = [UIColor colorWithRed:0.619 green:0.037 blue:0.6719 alpha:1.0];
        }];
    } completion:^(BOOL finished) {
        NSLog(@"动画结束");
    }];
}

- (void)startAni:(NSString *)aniID {
    NSLog(@"%@ start",aniID);
}

- (void)stopAni:(NSString *)aniID {
    NSLog(@"%@ stop",aniID);
    self.leftView.frame = self.viewFrame;
}

- (void)viewDidLayoutSubviews {
    [self animationGroup];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self changeFrame];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animationGroup)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
