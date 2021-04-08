//
//  Person.m
//  objc
//
//  Created by Pedro Neto on 07/04/21.
//

#import "Person.h"

@interface Person ()

@property (nonatomic) NSInteger age;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@end

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSInteger)age {
    
    if (self = [super init]) {
        
        _age = age;
        _firstName = firstName;
        _lastName = lastName;
        
        
        // Do initialization here.
    }
    
    return self;
}

- (NSString *)fullName {
    NSString *fullName = nil;
    
    if (self.firstName && self.lastName) {
        
        fullName = [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
    }
    
    return fullName;
}

+ (Person *)constructPersonFromDictionary:(NSDictionary *)dictionary {
    
    Person *person = nil;

    NSNumber *age = dictionary[@"age"];
    NSString *firstName = dictionary[@"firstName"];
    NSString *lastName = dictionary[@"lastName"];
    
    if (age && firstName && lastName) {
        
        person = [[Person alloc] initWithFirstName:firstName lastName:lastName age:[age integerValue]];
        
    }
    return person;
}
// setter
//- (void)setAge:(NSInteger)age {
//    self.age = age - 24;
//}

// getter
//- (NSInteger)age {
//    return _age;
//}

@end
