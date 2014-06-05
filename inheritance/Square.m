#import "Square.h"

@implementation Square
-(void) setSide:(int)x
{
  width = x;
  height = x;
}

-(void) draw
{
  int x,y;
  printf("\n");
  for(x = 0; x < height; x++){
    for(y = 0; y < width; y++){
      printf("%c",'*');
    }
    printf("\n");
  }
}
@end
