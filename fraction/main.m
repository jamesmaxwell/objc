#import "Fraction.h"

int main(int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  Fraction *fr1 = [[Fraction alloc] init];
  Fraction *fr2 = [[Fraction alloc] init];
 
  Fraction *result;

  [fr1 setTo: 1 over: 3];
  [fr2 setTo: 3 over: 5];

  [fr1 print];
  [fr2 print];

  NSLog(@"%i/%i=%f", [fr1 numerator], [fr1 denominator], [fr1 convertToNum]); 
  NSLog(@"%i/%i=%f", [fr2 numerator], [fr2 denominator], [fr2 convertToNum]);

  result = [fr1 add: fr2];
  [result print];
  NSLog(@"%i/%i=%f", [result numerator], [result denominator], [result convertToNum]);

  [pool drain];
  return 0;
}
