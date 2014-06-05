#import <Foundation/Foundation.h>
#import "Class.h"

@implementation ClassA

-(void) initVar: (int)v
{
  x = v;
}

-(void) printVar
{
  NSLog(@"ClassA x=%i", x);
}

@end

@implementation ClassB

-(void) initVar: (int)v
{
 x = v;
}

-(void) printVar
{
  NSLog(@"ClassB x=%i", x);
}
@end

@implementation ClassC

-(void) initVar: (int)v
{
  x = v;
}

-(void) printVar
{
  NSLog(@"ClassC x=%i",x);
}
@end

