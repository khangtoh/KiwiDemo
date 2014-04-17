//
//  PCContent.m
//  KiwiDemo
//
//  Created by khangtoh on 17/4/14.
//  Copyright (c) 2014 PicoCandy Pte Ltd. All rights reserved.
//

#import "PCContent.h"
@interface PCContent()
@property (nonatomic, assign) NSInteger score;
@end

@implementation PCContent
-(id)initWithScore:(NSInteger)score
{
    if ([self init])
    {
        self.score = score;
    }
    return self;
}

-(id)init
{
    self = [super init];
    
    if (self)
    {
        self.score = 0;
    }
    return self;
    
}

-(NSString *)description
{
    return self.score >= 100 ? @"awesome" : @"almost awesome";
}
@end
