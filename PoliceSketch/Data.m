//
//  Data.m
//  PoliceSketch
//
//  Created by Jose on 27/5/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Data.h"

@implementation Data

-(instancetype) init {
    self = [super init];
    UIImage* eyes1 = [UIImage imageNamed:@"eyes_1.jpg"];
    UIImage* eyes2 = [UIImage imageNamed:@"eyes_2.jpg"];
    UIImage* eyes3 = [UIImage imageNamed:@"eyes_3.jpg"];
    UIImage* eyes4 = [UIImage imageNamed:@"eyes_4.jpg"];
    UIImage* eyes5 = [UIImage imageNamed:@"eyes_5.jpg"];
    self.eyesArray = @[eyes1,eyes2,eyes3,eyes4,eyes5];
    
    UIImage* nose1 = [UIImage imageNamed:@"nose_1.jpg"];
    UIImage* nose2 = [UIImage imageNamed:@"nose_2.jpg"];
    UIImage* nose3 = [UIImage imageNamed:@"nose_3.jpg"];
    UIImage* nose4 = [UIImage imageNamed:@"nose_4.jpg"];
    UIImage* nose5 = [UIImage imageNamed:@"nose_5.jpg"];
    self.nosesArray = @[nose1,nose2,nose3,nose4,nose5];
    
    UIImage* mouth1 = [UIImage imageNamed:@"mouth_1.jpg"];
    UIImage* mouth2 = [UIImage imageNamed:@"mouth_2.jpg"];
    UIImage* mouth3 = [UIImage imageNamed:@"mouth_3.jpg"];
    UIImage* mouth4 = [UIImage imageNamed:@"mouth_4.jpg"];
    UIImage* mouth5 = [UIImage imageNamed:@"mouth_5.jpg"];
    self.mouvesArray = @[mouth1,mouth2,mouth3,mouth4,mouth5];
    
    return self;
}

-(UIImage*) previousEyes:(UIImage*) image {
    NSUInteger i = [self.eyesArray indexOfObject:image];
    if (i == 0) {
        return [self.eyesArray lastObject];
    }
    else {
    return self.eyesArray[i-1];
    }
}

-(UIImage*) nextEyes:(UIImage *)image {
    NSUInteger i = [self.eyesArray indexOfObject:image];
    if (i == [self.eyesArray count]-1) {
        return [self.eyesArray firstObject];
    }
    else {
    return self.eyesArray[i+1];
    }
}

-(UIImage*) previousNose:(UIImage*) image {
    NSUInteger i = [self.nosesArray indexOfObject:image];
    if (i == 0) {
        return [self.nosesArray lastObject];
    }
    else {
        return self.nosesArray[i-1];
    }
}

-(UIImage*) nextNose:(UIImage *)image {
    NSUInteger i = [self.nosesArray indexOfObject:image];
    if (i == [self.nosesArray count]-1) {
        return [self.nosesArray firstObject];
    }
    else {
        return self.nosesArray[i+1];
    }
}
    
-(UIImage*) previousMouth:(UIImage*) image {
        NSUInteger i = [self.mouvesArray indexOfObject:image];
        if (i == 0) {
            return [self.mouvesArray lastObject];
        }
        else {
            return self.mouvesArray[i-1];
        }
}
    
-(UIImage*) nextMouth:(UIImage *)image {
        NSUInteger i = [self.mouvesArray indexOfObject:image];
        if (i == [self.mouvesArray count]-1) {
            return [self.mouvesArray firstObject];
        }
        else {
            return self.mouvesArray[i+1];
        }
}

@end
