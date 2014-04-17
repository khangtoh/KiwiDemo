//
//  PCContentSpecs.m
//  KiwiDemo
//
//  Created by khangtoh on 17/4/14.
//  Copyright (c) 2014 PicoCandy Pte Ltd. All rights reserved.
//

#import "Kiwi/Kiwi.h"
#import "PCContent.h"

SPEC_BEGIN(PCContentSpec)
describe(@"PCContent", ^{
    context(@"when score is 100", ^{
        it(@"should be awesome", ^{
        
            PCContent *content = [[PCContent alloc] initWithScore:100];
            [[[content description] should] containString:@"awesome"];
            
        });
    });
});
SPEC_END
