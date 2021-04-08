//
//  Person.h
//  objc
//
//  Created by Pedro Neto on 07/04/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject



- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                              age:(NSInteger)age;

- (NSString *)fullName;

+ (Person *)constructPersonFromDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
