//
//  Contact.m
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(id)initWithNameAndEmail:(NSString *)Name email:(NSString *)Email {
   
    if (self = [super init]) {
        _name = Name;
        _email = Email;
        _contactId = _contactId;
    }
   
    return self;
}

@end
