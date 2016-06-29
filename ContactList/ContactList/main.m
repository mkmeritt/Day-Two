//
//  main.m
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
       
        
        InputCollector* collector = [[InputCollector alloc] init];
               
        ContactList* list = [[ContactList alloc] init];
        
        BOOL running = YES;
        
        while (running) {
            
        if([collector.promptString isEqual: @"quit\n"]) {
            NSLog(@"Goodbye");
            return 0;
            
        } if([collector.promptString isEqual: @"new\n"]) {
            
            char nameChar[255];
            char emailChar[255];
            
            NSLog(@"New Contact\n");
            
            printf("Enter Name: \n");
            fgets(nameChar, 255, stdin);
            
            NSString* nameString = [NSString stringWithUTF8String:nameChar];
            
            printf("Enter Email: \n");
            fgets(emailChar, 255, stdin);
            
            NSString* emailString = [NSString stringWithUTF8String:emailChar];
            
            Contact *newContact = [[Contact alloc] initWithNameAndEmail:nameString email:emailString];
            [list.contacts addObject:newContact];
            
            NSLog(@"Contact Added! \n");
            
            [collector displayMenu];
            
        }  if([collector.promptString isEqual: @"list\n"]) {
            [list displayList];
            [collector displayMenu];
            
        } if([collector.promptString isEqual:@"show\n"]) {
            
            char showChar[255];
            
            printf("Enter an index number: ");
            fgets(showChar, 255, stdin);
            
            NSString* showString = [NSString stringWithUTF8String:showChar];
            
            NSLog(@"You have found %@, \n", [list findContactById:showString]);
            
            
        } if([collector.promptString isEqual:@"find\n"]) {
            
            char findChar[255];
            
            printf("Enter a search term: ");
            fgets(findChar, 255, stdin);
            
            NSString* findString = [NSString stringWithUTF8String:findChar];
            
           [list searchByString:findString];
        }
        }
    }
    return 0;
}
