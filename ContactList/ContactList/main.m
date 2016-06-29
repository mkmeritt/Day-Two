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
     
        NSMutableArray* history = [[NSMutableArray alloc] init];
        
        InputCollector* collector = [[InputCollector alloc] init];
               
        ContactList* list = [[ContactList alloc] init];
        
        BOOL running = YES;
        
        while (running) {
            
        if([collector.promptString isEqual: @"history\n"]) {
            
            
           
            
            NSString* last = history[0];
            NSString* secondlast = history[1];
            NSString* thirdlast = history[2];
            
            NSLog(@"Last: %@", last);
            NSLog(@"Second Last: %@", secondlast);
            NSLog(@"Third Last: %@", thirdlast);
            
            
                [collector displayMenu];
            
            
        }
            
        if([collector.promptString isEqual: @"quit\n"]) {
            NSLog(@"Goodbye");
            return 0;
            
        } if([collector.promptString isEqual: @"new\n"]) {
            
            char nameChar[255];
            char emailChar[255];
            
            printf("Enter Email: \n");
            fgets(emailChar, 255, stdin);
            
            NSString* emailString = [NSString stringWithUTF8String:emailChar];
            
            NSLog(@"New Contact\n");
            
            printf("Enter Name: \n");
            fgets(nameChar, 255, stdin);
            
            NSString* nameString = [NSString stringWithUTF8String:nameChar];
            
          
      
            if([list duplicateEntry:emailString]) {
                NSLog(@"Email address already added. Cannot create this contact. Try Again.\n");
             
            } else {
            Contact *newContact = [[Contact alloc] initWithNameAndEmail:nameString email:emailString];
            [list.contacts addObject:newContact];
            
            NSLog(@"Contact Added! \n");
                
                NSLog(@"Add phone number? \n");
                NSLog(@"y/n \n");
                
                char yChar[255];
                
                fgets(yChar, 255, stdin);
                
                NSString* yString = [NSString stringWithUTF8String:yChar];
                
                if([yString isEqualToString:@"y\n"]) {
                
                     NSLog(@"Enter phone number: \n");
                        
                        char phoneChar[255];
                        
                        fgets(phoneChar, 255, stdin);
                        
                        NSString* phoneString = [NSString stringWithUTF8String:phoneChar];
                        
                        [newContact addPhoneNumber:phoneString];
                        
                        
                }
            }
            
            [history addObject:@"new"];
            
            [collector displayMenu];
                
            
            
        
            
        }  if([collector.promptString isEqual: @"list\n"]) {
             [history addObject:@"list"];
            
            [list displayList];
            [collector displayMenu];
            
        } if([collector.promptString isEqual:@"show\n"]) {
            
            char showChar[255];
            
            printf("Enter an index number: ");
            fgets(showChar, 255, stdin);
            
            NSString* showString = [NSString stringWithUTF8String:showChar];
            
            NSLog(@"You have found %@, \n", [list findContactById:showString]);
            
             [history addObject:@"show"];
            
            [collector displayMenu];
            
            
        } if([collector.promptString isEqual:@"find\n"]) {
            
            char findChar[255];
            
            printf("Enter a search term: ");
            fgets(findChar, 255, stdin);
            
            NSString* findString = [NSString stringWithUTF8String:findChar];
            
           [list searchByString:findString];
            
             [history addObject:@"find"];
            
            [collector displayMenu];
        }
        }
    
    }
    return 0;
}
