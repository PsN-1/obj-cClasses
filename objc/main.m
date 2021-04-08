//
//  main.m
//  objc
//
//  Created by Pedro Neto on 07/04/21.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //        Person *person = [[Person alloc] init];
        Person *person = [Person new];
        
        Person *geddyLee = [[Person alloc] initWithFirstName:@"Geddy" lastName:@"Lee" age:65];
        
        NSLog(@"%@", [geddyLee fullName]);
        
        Person *alexLifeson = [Person constructPersonFromDictionary:@{
            @"firstName": @"Alex",
            @"lastName": @"Lifeson",
            @"age": @(65)
        }];
        NSLog(@"%@", [alexLifeson fullName]);
        
        Person *nealPeart = [Person constructPersonFromDictionary:@{
            @"firstName": @"Neal",
            @"lastName": @"Peart",
            @"age": @(65)
        }];
        NSLog(@"%@", [nealPeart fullName]);
        
        
    }
    return 0;
}
