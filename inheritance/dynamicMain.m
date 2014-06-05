#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  Rectangle *rect = [[Rectangle alloc] init];
  Square *square = [[Square alloc] init];
  id shape;
  SEL sel;
  NSArray *myArr = [NSArray array];
  
  //多态
  [rect setWidth: 10 andHeight: 5];
  [square setSide: 5];

  shape = rect;
  [shape draw];

  shape = square;
  [shape draw];

  sel = @selector(draw);
  if([square isMemberOfClass: [Square class]] == YES)
    NSLog(@"square is a member of Square class");

  if([square isMemberOfClass: [Rectangle class]] == NO)
    NSLog(@"square is not a member of Rectangle class");

  if([square isKindOfClass: [Rectangle class]] == YES)
    NSLog(@"square is a kind of Rectangle class");

  if([Square respondsToSelector: sel] == YES)
    NSLog(@"square is respond to draw");

  if([Rectangle instancesRespondToSelector: sel] == YES)
    NSLog(@"Instance of Rectangle respond to draw"); 
 
  @try{
    [myArr objectAtIndex: 2];
  }
  @catch(NSException *exp){
    NSLog(@"Caught %@%@",exp.name, exp.reason);
  }
  [pool drain];
  return 0;
}
