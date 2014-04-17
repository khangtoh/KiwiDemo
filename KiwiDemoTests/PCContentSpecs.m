//
//  PCContentSpecs.m
//  KiwiDemo
//
//  Created by khangtoh on 17/4/14.
//  Copyright (c) 2014 PicoCandy Pte Ltd. All rights reserved.
//

#import "Kiwi/Kiwi.h"
#import "PCContent.h"


SPEC_BEGIN(SpecName)

PCContent *subject = [[PCContent alloc] initWithScore:100];






[[expectFutureValue(myObject) shouldEventually] beNonNil];





context(@"Fetching service data", ^{
    
    it(@"should receive data within one second", ^{
        
        __block NSString *fetchedData = nil;
        
        [[LRResty client] get:@"http://www.example.com" withBlock:^(LRRestyResponse* r) {
            
            NSLog(@"That's it! %@", [r asString]);
            
            fetchedData = [r asString];
        
        }];
        
        [[expectFutureValue(fetchedData) shouldEventually] beNonNil];
        
    });
    
});





[subject stub:(SEL)aSelector]

[subject stub:(SEL)aSelector andReturn:(id)aValue]


id mock = [Animal mock];

[mock stub:@selector(species) andReturn:@"P. tigris"];

[[mock.species should] equal:@"P. tigris"];








id carMock = [Car mock];

[ [carMock should] beMemberOfClass:[Car class]];

[ [carMock should] receive:@selector(currentGear) andReturn:theValue(3)];

[ [theValue(carMock.currentGear) should] equal:theValue(3)];


id flyerMock = [KWMock mockForProtocol:@protocol(FlyingMachine)];

[ [flyerMock should] conformToProtocol:@protocol(FlyingMachine)];




[[subject should] receive:(SEL)aSelector]

[[subject should] receive:(SEL)aSelector andReturn:(id)aValue]

[[subject should] receive:(SEL)aSelector withArguments:(id)firstArgument, ...]

[[subject should] receive:(SEL)aSelector andReturn:(id)aValue withArguments:(id)firstArgument, ...]











[[subject should] receive:(SEL)aSelector andReturn:(id)aValue withCount:(NSUInteger)aCount]

[[subject should] receive:(SEL)aSelector andReturn:(id)aValue withCountAtLeast:(NSUInteger)aCount]

[[subject should] receive:(SEL)aSelector andReturn:(id)aValue withCountAtMost:(NSUInteger)aCount]




[[subject should] beEmpty]

[[subject should] contain:(id)anObject]

[[subject should] containObjectsInArray:(NSArray *)anArray]

[[subject should] containObjects:(id)firstObject, ...]

[[subject should] haveCountOf:(NSUInteger)aCount]

[[subject should] haveCountOfAtLeast:(NSUInteger)aCount]

[[subject should] haveCountOfAtMost:(NSUInteger)aCount]


[[subject should] beKindOfClass:(Class)aClass]

[[subject should] beMemberOfClass:(Class)aClass]

[[subject should] conformToProtocol:(Protocol *)aProtocol]

[[subject should] respondToSelector:(SEL)aSelector]





[[@"ababab" should] matchPattern:@"(ab)+"];

[[@" foo " shouldNot] matchPattern:@"^foo$"];

[[@"abABab" should] matchPattern:@"(ab)+" options:NSRegularExpressionCaseInsensitive];





[[@"Hello, world!" should] containString:@"world"];

[[@"Hello, world!" should] containString:@"WORLD" options:NSCaseInsensitiveSearch];

[[@"Hello, world!" should] startWithString:@"Hello,"];

[[@"Hello, world!" should] endWithString:@"world!"];


[[subject shouldNot] beNil]

[[subject should] beNil]

[[subject should] beIdenticalTo:(id)anObject] // compares id's

[[subject should] equal:(id)anObject]

[[subject should] equal:(double)aValue withDelta:(double)aDelta]

[[subject should] beWithin:(id)aDistance of:(id)aValue]

[[subject should] beLessThan:(id)aValue]

[[subject should] beGreaterThan:(id)aValue]

[[subject should] beTrue]

[[subject should] beFalse]




id car = [Car car];

[[car shouldNot] beNil];

[[car should] beKindOfClass:[Car class]];


describe(@"ClassName", ^{
    
    context(@"a state the component is in", ^{
        let(variable, ^{
            return [[PCContent alloc] initWithScore:100];
        });
        
        beforeAll(^{ // Occurs once
        });
        
        afterAll(^{ // Occurs once
        });
        
        beforeEach(^{ // Occurs before each enclosed "it"
        });
        
        afterEach(^{ // Occurs after each enclosed "it"
        });
        
        it(@"should do something", ^{
            [[variable should] meetSomeExpectation];
        });
        
        specify(^{
            [[variable shouldNot] beNil];
        });
        
        context(@"inner context", ^{
            it(@"does another thing", ^{
            });
            
            pending(@"something unimplemented", ^{
            });
        });
    });
});

SPEC_END
SPEC_BEGIN(PCContentSpec)

describe(@"PCContent", ^{

    let(score, ^id{
        return [NSNumber numberWithInt:100];
    });
    
    beforeAll(^{ // Occurs once
    });
    
    afterAll(^{ // Occurs once
    });
    
    beforeEach(^{ // Occurs before each enclosed "it"
    });
    
    afterEach(^{ // Occurs after each enclosed "it"
    });
    
    
    context(@"when score is 100", ^{
        
        it(@"should be awesome", ^{
        
            PCContent *content = [[PCContent alloc] initWithScore:100];
            [[[content description] should] containString:@"awesome"];
            
        });
        
    });
    
});

SPEC_END
