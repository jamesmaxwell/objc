#import <Foundation/Foundation.h>
#import "Class.h"

int main(int argc, char *argv[]){
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  ClassA *a = [[ClassA alloc] init];
  ClassB *b = [[ClassB alloc] init];
  ClassC *c = [[ClassC alloc] init];

  [a initVar:1];
  [a printVar];

  [b initVar:2];
  [b printVar];

  [c initVar:3];
  [c printVar];  

  [pool drain];
  return 0;
}
