//
//  NSArray+Map.m
//  Pods
//
//  Created by Javier Querol on 22/12/14.
//
//

#import "NSArray+JAQ.h"

@implementation NSArray (JAQ)

- (NSArray *)jaq_map:(id (^)(id item))block {
	NSMutableArray *results = [NSMutableArray array];
	for (id object in self) {
		id result = block(object);
		if (result) [results addObject:result];
	}
	return [results copy];
}

- (NSArray *)jaq_filter:(id (^)(id item))block {
	NSMutableArray *results = [NSMutableArray array];
	for (id object in self) {
		if (block(object)) [results addObject:object];
	}
	return [results copy];
}

@end
