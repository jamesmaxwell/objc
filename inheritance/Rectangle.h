#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject
{
  int width, height;
  XYPoint *origin;
}

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int)  area;
-(int)  perimeter;
-(int)  width;
-(int)  height;
-(void) draw;
@end
