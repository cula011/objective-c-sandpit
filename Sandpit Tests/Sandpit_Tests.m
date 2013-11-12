//
//  SandpitTests.m
//  SandpitTests
//
//  Created by Luka Kruscic on 11/11/2013.
//  Copyright (c) 2013 Luka Kruscic. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Fraction.h"

@interface SandpitTests : XCTestCase
{
@private
    Fraction *aFraction, *bFraction;
}
@end

@implementation SandpitTests

- (void)setUp
{
    //[super setUp];    
    aFraction = [[Fraction alloc] init];
    bFraction = [[Fraction alloc] init];
}

- (void)tearDown
{
    //[super tearDown];
    aFraction = nil;
    bFraction = nil;
}

- (void)testFractionAdd
{
    [aFraction setTo:1 over:4];
    [bFraction setTo:1 over:2];
    
    Fraction *resultFraction;
    resultFraction = [aFraction add:bFraction];
    
    XCTAssertTrue(resultFraction.numerator == 3, "Calculated numerator is not correct, expected 3 but got %i", resultFraction.numerator);
    XCTAssertTrue(resultFraction.denominator == 4, "Calculated denominator is not correct, expected 4 but got %i", resultFraction.denominator);
}

@end
