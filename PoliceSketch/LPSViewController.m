//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Data.h"

@interface LPSViewController ()

@property Data* data;
@property (weak, nonatomic) IBOutlet UIImageView* eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView* noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView* mouthImageView;

@end


@implementation LPSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[Data alloc] init];
    self.eyesImageView.image = [self.data.eyesArray firstObject];
    self.noseImageView.image = [self.data.nosesArray firstObject];
    self.mouthImageView.image = [self.data.mouvesArray firstObject];
}

- (IBAction)leftButtonEyes:(UIButton *)sender {
    self.eyesImageView.image = [self.data previousEyes:self.eyesImageView.image];
}

- (IBAction)rightButtonEyes:(UIButton *)sender {
    self.eyesImageView.image = [self.data nextEyes:self.eyesImageView.image];
}

- (IBAction)leftButtonNose:(UIButton *)sender {
    self.noseImageView.image = [self.data previousNose:self.noseImageView.image];
}

- (IBAction)rightButtonNose:(UIButton *)sender {
    self.noseImageView.image = [self.data nextNose:self.noseImageView.image];
}

- (IBAction)leftButtonMouth:(UIButton *)sender {
    self.mouthImageView.image = [self.data previousMouth:self.mouthImageView.image];
}


- (IBAction)rightButtonMouth:(UIButton *)sender {
    self.mouthImageView.image = [self.data nextMouth:self.mouthImageView.image];
}


@end
