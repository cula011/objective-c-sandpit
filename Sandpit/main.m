//
//  Fraction.m
//  Sandpit
//
//  Created by Luka Kruscic on 24/09/12.
//  Copyright (c) 2012 Luka Kruscic. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//// ---- @interface section ----
//
//@interface Fraction : NSObject
//
//-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//
//@end

// ---- @implementation section ----

//@implementation Fraction
//{
//    int numerator;
//    int denominator;
//}
//
//-(void) print
//{
//    NSLog(@"%i/%i", numerator, denominator);
//}
//
//-(void) setNumerator: (int) n
//{
//    numerator = n;
//}
//
//-(void) setDenominator: (int) d
//{
//    denominator = d;
//}

#import "Fraction.h"

// ---- program section ---

int main (int argc, char * argv[])
{
    @autoreleasepool {
        // Create an instance of a Fraction
        // Fraction *myFraction;
        // myFraction = [Fraction alloc];
        // myFraction = [myFraction init];
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set fraction to 1/3
        // [myFraction setNumerator: 1];
        // myFraction.numerator = 1;
        // [myFraction setDenominator: 3];
        // myFraction.denominator = 3;
        [myFraction setTo:1 over:3];
        
        // Display the fraction using the print method
        NSLog(@"The value of my fraction is:");
        [myFraction print];
        
        NSLog(@"=====");
        
        Fraction *resultFraction;
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        
        [resultFraction print];
        
        NSLog(@"=====");
        
        [bFraction print];
        NSLog(@"-");
        [aFraction print];
        NSLog(@"=");
        resultFraction = [bFraction subtract:aFraction];
        
        [resultFraction print];
        
        NSLog(@"=====");
        
        [aFraction print];
        NSLog(@"*");
        [aFraction print];
        NSLog(@"=");
        resultFraction = [aFraction multiply:aFraction];
        
        [resultFraction print];
        
        NSLog(@"=====");
        
        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction divide:bFraction];
        
        [resultFraction print];
    }
    return 0;
}