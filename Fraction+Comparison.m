//
//  Fraction+Comparison.m
//  Sandpit
//
//  Created by Luka Kruscic on 15/11/2013.
//  Copyright (c) 2013 Luka Kruscic. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f
{
    if ((double)self.numerator/self.denominator == (double)f.numerator/f.denominator)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
