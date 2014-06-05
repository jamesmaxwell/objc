#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, char *arg[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  XYPoint *point = [[XYPoint alloc] init];
  Rectangle *rect = [[Rectangle alloc] init];

  [point setX:2 andY:3];
  [rect setOrigin: point];
  [rect setWidth:20 andHeight:10];
 
  NSLog(@"Area off %i and %i is %i",[rect width], [rect height],[rect area]);

  [rect draw];

  [pool drain];
  return 0;
}
