//
//  ContactList.h
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject 

-(id)init;
-(void)displayList;
-(void) addIndexNumber: (NSString*) indexNumber;
-(void) generateIndexNumber;

-(NSString*) findContactById: (NSString*) indexNumber;
-(NSString*) searchByString: (NSString*) searchItem;

@property (nonatomic, retain) NSMutableArray* contacts;
@property (nonatomic, retain) NSString* index;
@property (nonatomic, retain) NSSet* indexList;






@end
