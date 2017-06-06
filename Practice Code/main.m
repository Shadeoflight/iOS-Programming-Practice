

/* The Foundation/Foundation.h is similar to
    the iostream of C++ in its usage for general
    purpose applications */
#import <Foundation/Foundation.h>

/* Interface can be named anything */
/* 
    The interface for MathClass
*/
@interface MathClass:NSObject

/* method declaration */
- (int)max:(int)num1 andNum2:(int)num2;

@end

/* 
    The implementation of MathClass interface methods
*/
@implementation MathClass

/* method returning the max between two numbers */
- (int)max:(int)num1 andNum2:(int)num2{
/* local variable declaration */
   int result;
 
   if (num1 > num2)
   {
      result = num1;
   }
   else
   {
      result = num2;
   }
 
   return result; 
}

@end

/*
    The main program
*/
int main (int argc, const char * argv[])
{
    int x = 10;
    int y = 25;
    int ret = 0;

    /* The "@" is used as an identifier to associate the string that follows
        it as associated with NSLog. In general usage, it is used to
        differentiate from C, which is the language Objective-C is derived
        from initially */
    
    NSLog(@"x contains: %i", x);
    NSLog(@"y contains: %i", y);
    NSLog(@"Sum of x + y  = %i", (x+y));
    MathClass *mathClass = [[MathClass alloc]init];

    /* calling a method to get max value */
    ret = [mathClass max:x andNum2:y];
  
    NSLog(@"Max value is : %d\n", ret );

    return 0;

}
