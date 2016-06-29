//
//  main.m
//  Boxes
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"
#import <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ////////////FIRST BOX
        
        char inputHeight[5];
        char inputWidth[5];
        char inputLength[5];
        
        
        NSLog(@"First Box \n");
        
        printf("Input a height: \n");
        
        fgets(inputHeight, 5, stdin);
        
        NSLog(@"Height is %s\n", inputHeight);
        
        NSString* heightString = [NSString stringWithUTF8String:inputHeight];
        
        printf("Input a width: \n");
        
        fgets(inputWidth, 5, stdin);
        
        NSLog(@"Width is %s\n", inputWidth);
        
        NSString* widthString = [NSString stringWithUTF8String:inputWidth];
        
        printf("Input a length: \n");
        
        fgets(inputLength, 5, stdin);
        
        NSLog(@"Length is %s\n", inputLength);
        
        NSString* lengthString = [NSString stringWithUTF8String:inputLength];
        
        float h = [heightString floatValue];
        
        float w = [widthString floatValue];
        
        float l = [lengthString floatValue];
    
        Box *box = [[Box alloc] initBox:h width:w length:l];
        
        float vol = [box volumeOfBox];
        
        NSLog(@"Volume of the box is %d\n", (int)vol);
        
        
        ///////////////SECOND BOX
        
        char inputHeightTwo[5];
        char inputWidthTwo[5];
        char inputLengthTwo[5];
        
        NSLog(@"Second Box \n");
        
        printf("Input a height: \n");
        
        fgets(inputHeightTwo, 5, stdin);
        
        NSLog(@"Height is %s\n", inputHeightTwo);
        
        NSString* heightStringTwo = [NSString stringWithUTF8String:inputHeightTwo];
        
        printf("Input a width: \n");
        
        fgets(inputWidthTwo, 5, stdin);
        
        NSLog(@"Width is %s\n", inputWidthTwo);
        
        NSString* widthStringTwo = [NSString stringWithUTF8String:inputWidthTwo];
        
        printf("Input a length: \n");
        
        fgets(inputLengthTwo, 5, stdin);
        
        NSLog(@"Length is %s\n", inputLengthTwo);
        
        NSString* lengthStringTwo = [NSString stringWithUTF8String:inputLengthTwo];
        
        float h2 = [heightStringTwo floatValue];
        
        float w2 = [widthStringTwo floatValue];
        
        float l2 = [lengthStringTwo floatValue];
        
        float vol2 = [box createBoxWithVolume:h2 secondWidth:w2 secondLength:l2];
        
        NSLog(@"Volume of the second box is %d\n", (int)vol2);
        
        NSLog(@"The second box can fit into the first box %d times\n", (int)[box fitInBox]);
    
    }
    return 0;
}
