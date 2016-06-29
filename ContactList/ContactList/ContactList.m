//
//  ContactList.m
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(id)init{
    if(self = [super init]) {
        self.contacts = [[NSMutableArray alloc] init];
        
        self.index = @"0";
        
        self.indexList = [[NSSet alloc] initWithObjects:self.index, nil];
    }
    
    return self;
}

-(void)displayList {
    
    for(Contact *contacts in self.contacts) {
        [self addIndexNumber:self.index];
        NSLog(@"%@: %@ \n", contacts.contactId, contacts.name);
    }
    
}

-(void) generateIndexNumber {
    int val = self.index.intValue;
    
    val = val + 1;
    
    NSNumber* num = [[NSNumber alloc] initWithInt:val];
    
    self.index = [num stringValue];
    
}

-(void) addIndexNumber:(NSString *)indexNumber {
    for (Contact *contacts in self.contacts) {
        
        if (!contacts.idAdded) {
            [self generateIndexNumber];
            contacts.contactId = self.index;
            contacts.idAdded = YES;
        }
      
    }
}

-(NSString*) findContactById:(NSString *)indexNumber {
    
    int num = [indexNumber intValue];
    
     for (Contact *contacts in self.contacts) {
         
         int cNum = [contacts.contactId intValue];
         
         if(num == cNum) {
             return contacts.name;
         }
             
    }
    
    return nil;
}

-(NSString*) searchByString:(NSString *)searchItem {
    
    NSString* st;
    
    for(Contact *contacts in self.contacts) {
        if([contacts.name containsString:searchItem]) {
            
            NSLog(@"You have found contact with id %@ and name %@ \n", contacts.contactId, contacts.name);
            
            return st;
        }
    }
    
    return st;
}

@end
