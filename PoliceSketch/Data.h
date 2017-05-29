//
//  Data.h
//  PoliceSketch
//
//  Created by Jose on 27/5/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property NSArray* eyesArray;
@property NSArray* nosesArray;
@property NSArray* mouvesArray;

-(UIImage*) previousEyes: (UIImage*) image;
-(UIImage*) nextEyes: (UIImage*) image;
-(UIImage*) previousNose: (UIImage*) image;
-(UIImage*) nextNose: (UIImage*) image;
-(UIImage*) previousMouth: (UIImage*) image;
-(UIImage*) nextMouth: (UIImage*) image;



@end
