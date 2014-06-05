#import "Fraction.h"

@implementation Fraction

-(int) numerator
{
  return numerator;
}

-(int) denominator
{
  return denominator;
}

-(void) print
{
  NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo: (int)n over: (int)d
{
  numerator = n;
  denominator = d;
}

-(double) convertToNum
{
  if(denominator != 0)
    return (double)numerator / denominator;
  else
    return NAN;
}

-(Fraction *) add: (Fraction *)f
{
  Fraction *result = [[Fraction alloc] init];
  int u = numerator * f.denominator + f.numerator * denominator;
  int v = denominator * f.denominator;
  [result setTo:u over:v];
 
  return result;
}

-(void) reduce
{
  int u = numerator;
  int v = denominator;
  int temp;

  while(v != 0){
    temp = u % v;
    u = v;
    v = temp;
  }

  numerator /= u;
  denominator /= u;
}
@end
