#import "Rectangle.h"

@implementation Rectangle

-(XYPoint *) origin
{
  return origin;
}

-(void) setOrigin:(XYPoint *)pt
{
  origin = pt;
}

-(void) setWidth: (int) w andHeight: (int) h
{
  width = w;
  height = h;
}

-(int) area
{
  return width * height;
}

-(int) perimeter
{
  return (width + height) * 2;
}

-(int) width
{
  return width;
}

-(int) height
{
  return height;
}

-(void) draw
{
 int w,h;
 for(h = 0; h < height; h++){
   for(w = 0; w < width; w++){
     if(h == 0 || h == height - 1){
      printf("%c",'-');
     }
     else{
      if(w == 0 || w == width -1)
        printf("%c", '|');
      else
        printf("%c",' ');
     }
   }
   printf("\n");
 }
}
@end
