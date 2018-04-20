//
//  KPIArrayTask.m
//  Sequence
//
//  Created by paul on 4/20/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "KPIArrayTask.h"

@implementation KPIArrayTask
-(NSNumber *) summ{
    return [self.givenArray valueForKeyPath: @"@sum.self"];
};

@end
