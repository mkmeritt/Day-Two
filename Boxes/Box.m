//
//  Box.m
//  Boxes
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Box.h"

@implementation Box

-(id)initBox:(float)boxHeight width:(float)boxWidth length:(float)boxLength {
    
    if (self = [super init]) {
        
        height = boxHeight;
        width = boxWidth;
        length = boxLength;
        
    }
    return self;
}

-(float)volumeOfBox {
    return height * width * length;
}

-(float)createBoxWithVolume:(float)boxHeight secondWidth:(float)boxWidth secondLength:(float)boxLength {
    
    float _height = boxHeight;
    float _width = boxWidth;
    float _length = boxLength;
    
    volumeOfSecondBox = _height * _width * _length;
    
    return volumeOfSecondBox;
    
}


-(float)fitInBox {
    
   float val = [self volumeOfBox] / volumeOfSecondBox;
    
    return val;
}

@end
