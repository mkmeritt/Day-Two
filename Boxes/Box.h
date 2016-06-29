//
//  Box.h
//  Boxes
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject {
    
    float height;
    float width;
    float length;
    
    float volumeOfSecondBox;
    
}

- (id) initBox: (float)boxHeight width:(float)boxWidth length:(float)boxLength;

-(float) createBoxWithVolume: (float)boxHeight secondWidth:(float)boxWidth secondLength:(float)boxLength;

-(float) volumeOfBox;

-(float) fitInBox;


@end
