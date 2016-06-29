//
//  InputCollector.h
//  ContactList
//
//  Created by Mark Meritt on 2016-06-28.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject {
    NSString* _promptString;
}


-(id)init;
-(void)displayMenu;
-(NSString*) inputForPrompt: (NSString*)promptString;

@property (nonatomic, retain) NSString *promptString;

@end
