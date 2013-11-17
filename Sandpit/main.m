#import "Fraction.h"
//#import "Fraction+Comparison.h"
#import "Complex.h"

// ---- program section ---

int main (int argc, char * argv[])
{
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        [myFraction setTo:1 over:3];
        
        // Display the fraction using the print method
        NSLog(@"The value of my fraction is:");
        [myFraction print];
        
        NSLog(@"=====");
        
        Fraction *resultFraction;
        
        Fraction *aFraction = [[Fraction allocF] init];
        Fraction *bFraction = [[Fraction allocF] init];
        
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
        
        NSLog(@"=====");
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        NSLog(@"=====");
        Complex *aComplex = [[Complex alloc] init];
        [aComplex setReal: -5.0 andImaginary: 2.5];
        [aComplex print];
        
        /*
        enum month{ january=1, february, march };
        enum month aMonth;
        
        NSLog(@"Enter month number: ");
        scanf("%i", &aMonth);
        
        switch(aMonth)
        {
            case january:
                NSLog(@"January");
                break;
            case february:
                NSLog(@"February");
                break;
            case march:
                NSLog(@"March");
                break;
            default:
                NSLog(@"Not a valid month!");
        }
        */
        
        NSLog(@"=====");
        if ([aFraction isEqualTo:bFraction]) {
            NSLog(@"aFraction is equal to bFraction");
        }
        else
        {
            NSLog(@"aFraction is not equal to bFraction");
        }
    }
    return 0;
}