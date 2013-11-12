//
//  Fraction.h
//  Sandpit
//
//  Created by Luka Kruscic on 1/10/12.
//  Copyright (c) 2012 Luka Kruscic. All rights reserved.
//

#import <Foundation/Foundation.h>

// ---- @interface section ----

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
//-(void) setNumerator: (int) n;
//-(int) numerator;
//-(void) setDenominator: (int) d;
//-(int) denominator;
-(void) setTo:(int)n over:(int)d;
-(double) converToNum;
// -(void) add: (Fraction *) f;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;

@end