#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
  int numerator;
  int denominator;
}

-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(void) print;
@end

@implementation Fraction
-(void) setNumerator : (int) n
{
  numerator = n;
}

-(void) setDenominator: (int) d
{
  denominator = d;
}

-(void) print
{
  NSLog(@"%i/%i",numerator, denominator);
}
@end

int main(int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  Fraction *myFraction = [[Fraction alloc] init];
  
  [myFraction setNumerator: 1];
  [myFraction setDenominator: 3];

  [myFraction print]; 

  [pool drain];

  return 0;
}
