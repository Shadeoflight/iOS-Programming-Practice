
/* The Foundation/Foundation.h is similar to
    the iostream of C++ in its usage for general
    purpose applications */
#import <Foundation/Foundation.h>

/* Interface can be named anything */
/* 
    The interface for MathClass
*/
@interface MathClass:NSObject

/* Method declaration */
- (int)max:(int)var1 num2:(int)var2;
- (NSInteger)min:(NSInteger)var1 num2:(NSInteger)var2;

@end

/* 
    The implementation of MathClass interface methods
*/
@implementation MathClass

/* Method returning the max between two numbers */
- (int)max:(int)var1 num2:(int)var2{
/* Local variable declaration */
   int result;
 
   if (var1 > var2)
   {
      result = var1;
   }
   else
   {
      result = var2;
   }
 
   return result; 
}

/* Method returning the min between two numbers */
- (NSInteger)min:(NSInteger)var1 num2:(NSInteger)var2{
/* Local variable declaration */
    int result;
    
    if(var1 < var2)
    {
        result = var1;
    }
    else
    {
        result = var2;
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
    
    int retMax = 0;
    int retMin = 0;

    /* The "@" is used as an identifier to associate the string that follows
        it as associated with NSLog. In general usage, it is used to
        differentiate from C, which is the language Objective-C is derived
        from initially */
    
    NSLog(@"x contains: %i", x);
    NSLog(@"y contains: %i", y);
    NSLog(@"Sum of x + y  = %i", (x+y));
    
    /* Declares an object pointer to MathClass */
    MathClass *mathClass = [[MathClass alloc]init];

    /* Calling a method to get max value */
    retMax = [mathClass max:x num2:y];
    /* Calling a method to get min value */
    retMin = [mathClass min:x num2:y];
  
    NSLog(@"Max value is : %d\n", retMax );
    NSLog(@"Min value is : %d\n", retMin );

    return 0;

}
