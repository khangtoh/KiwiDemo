//
//  KiwiDemoTests.m
//  KiwiDemoTests
//
//  Created by khangtoh on 17/4/14.
//  Copyright (c) 2014 PicoCandy Pte Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PCContent.h"

@interface KiwiDemoTests : XCTestCase

@end

@implementation KiwiDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    PCContent *content = [[PCContent alloc] initWithScore:100];
    XCTAssertTrue([[content description] isEqualToString:@"awesome"], @"should be awesome");
    
}

@end
