//
//  Contact.h
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject {
    NSString* _name;
    NSString* _email;
    NSString* _contactId;
    
}

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* email;
@property (nonatomic, retain) NSString* contactId;

-(id) initWithNameAndEmail: (NSString*)Name email:(NSString*)Email;

@end
