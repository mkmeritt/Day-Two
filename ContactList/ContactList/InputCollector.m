//
//  InputCollector.m
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(id)init{
    if(self = [super init]) {
       
        
        [self displayMenu];
        
      

            }
    
    return self;
}

-(void)displayMenu {
    
    NSLog(@"What would you like to do next?\n");
    NSLog(@"new - Create a new contact\n");
    NSLog(@"list - List all contacts\n");
    NSLog(@"show - find by id\n");
    NSLog(@"find - search by name\n");
    NSLog(@"quit - Exit Application\n");
    
      _promptString = [self inputForPrompt:_promptString];

}

-(NSString*)inputForPrompt:(NSString *)promptString {
    
    char inputChars[10];
    
    fgets(inputChars, 10, stdin);
    
    self.promptString = [NSString stringWithUTF8String:inputChars];
    
  //  NSLog(@"You entered %@", self.promptString);
    
    return self.promptString;
}

@end
