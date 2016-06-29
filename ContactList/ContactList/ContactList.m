//
//  ContactList.m
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(id)init{
    if(self = [super init]) {
        self.contacts = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)displayList {
    int num = 1;
    
    
    
    for(Contact *contacts in self.contacts) {
        NSLog(@"%d: %@ \n", num, contacts.name);
        num++;
    }
    
}

@end
