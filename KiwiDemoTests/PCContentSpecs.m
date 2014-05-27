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
        
        let(content, ^id{
            return [[PCContent alloc] initWithScore:100];
        });
        
        it(@"should be awesome", ^{
    
            [[[content description] should] containString:@"awesome"];
            
        });
    });
    
    context(@"when score is < 100", ^{
        
        let(content, ^id{
            return [[PCContent alloc] initWithScore:100];
        });
        
        it(@"should be almost awesome", ^{
            
            [[[content description] should] containString:@"almost awesome"];
            
        });
        
    });
    
});
SPEC_END
