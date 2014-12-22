//
//  NSArray+Map.h
//  Pods
//
//  Created by Javier Querol on 22/12/14.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (JAQ)

- (NSArray *)jaq_map:(id (^)(id item))block;
- (NSArray *)jaq_filter:(id (^)(id item))block;

@end
