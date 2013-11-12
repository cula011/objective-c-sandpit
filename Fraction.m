//
//  Fraction.m
//  Sandpit
//
//  Created by Luka Kruscic on 1/10/12.
//  Copyright (c) 2012 Luka Kruscic. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

//{
//    int numerator;
//    int denominator;
//}
@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

//-(void) setNumerator: (int) n
//{
//    numerator = n;
//}
//
//-(int) numerator
//{
//    return numerator;
//}
//
//-(void) setDenominator: (int) d
//{
//    denominator = d;
//}
//
//-(int) denominator
//{
//    return denominator;
//}
-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(double) converToNum
{
    if (denominator != 0)
        return (double)numerator/denominator;
    else
        return NAN;
}


-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (numerator * f.denominator) + (denominator * f.numerator);
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) subtract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (numerator * f.denominator) - (denominator * f.numerator);
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    
    return result;
}

-(void) reduce
{
    // find greatest commonn denominator for the numerator and denominator
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    // divide them by the calculated gdc to 'reduce' the fraction
    numerator /= u;
    denominator /= u;
}

@end