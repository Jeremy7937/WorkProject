//
//  ViewController.m
//  GKProgress
//
//  Created by APPLE on 15/12/11.
//  Copyright © 2015年 HHDD. All rights reserved.
//

#import "ViewController.h"
#import "GKProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet GKProgressView *progressView;
@property (nonatomic, strong) NSTimer *myTimer;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ViewController
{
    CGFloat _value;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(timerStar:) userInfo:nil repeats:YES];
}

- (void)timerStar:(NSTimer *)timer {
    
    _value+= 0.01;
    self.progressView.progress = _value;
    self.mySlider.value = _value;
    
    if (_value > 0.76) {
        [self.myTimer setFireDate:[NSDate distantFuture]];
        return;
    }

}


- (IBAction)sliderChange:(UISlider *)sender {
    NSLog(@"%f",sender.value);
    self.progressView.progress = sender.value;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
