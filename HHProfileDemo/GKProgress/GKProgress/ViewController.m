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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
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
