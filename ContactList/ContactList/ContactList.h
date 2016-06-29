//
//  ContactList.h
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactList : NSObject {
    NSString* _indexNumber;
}

-(id)init;
-(void)displayList;

@property (nonatomic, retain) NSMutableArray* contacts;
@property (nonatomic, retain) NSString* indexNumber;

@end
