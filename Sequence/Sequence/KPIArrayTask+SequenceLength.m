//
//  KPIArrayTask+SequenceLength.m
//  Sequence
//
//  Created by paul on 4/21/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "KPIArrayTask+SequenceLength.h"
#define StepToNext 1

@implementation KPIArrayTask (SequenceLength)
-(NSInteger) sequenceLength{
    NSInteger count = 1;
    NSInteger tempCount = count;
    
    NSArray *sortedArray = [self.givenArray sortedArrayUsingSelector:@selector(compare:)];
    
    for (int i = 0; i < (sortedArray.count - 1); i++) {
        NSInteger currentToCompare = [[sortedArray objectAtIndex:i] integerValue] + StepToNext;
        NSInteger nextToCompare = [[sortedArray objectAtIndex:i + StepToNext] integerValue];
        
        if (currentToCompare == nextToCompare) {
            tempCount++;
        } else {
            tempCount = 1;
        }
        if (tempCount > count) {
            count = tempCount;
        }
    }
    return  count;
};
@end
