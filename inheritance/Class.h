#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
  int x;
}

-(void) initVar: (int)x;
-(void) printVar;

@end

@interface ClassB : ClassA

-(void) initVar: (int)x;
-(void) printVar;

@end

@interface ClassC : ClassB

-(void) initVar: (int)x;
-(void) printVar;

@end
