//
//  Contact.h
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject 
 

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* email;
@property (nonatomic, retain) NSString* contactId;
@property (nonatomic, retain) NSMutableArray* phoneNumbers;

@property (nonatomic, assign) BOOL idAdded;

-(id) initWithNameAndEmail: (NSString*)Name email:(NSString*)Email;
-(void) addPhoneNumber: (NSString*)phoneNumber;
-(void) printPhoneNumbers;

@end
