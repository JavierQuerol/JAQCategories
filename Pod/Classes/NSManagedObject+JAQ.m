//
//  NSManagedObject+FirstLetter.m
//  Fraternity
//
//  Created by Javier Querol on 02/12/13.
//  Copyright (c) 2013 treeNovum. All rights reserved.
//

#import "NSManagedObject+JAQ.h"

@implementation NSManagedObject (JAQ)

- (NSString *)jaq_uppercaseFirstLetterOfName {
    [self willAccessValueForKey:@"uppercaseFirstLetterOfName"];
    NSString *aString = [[self valueForKey:@"lastName"] uppercaseString];
	
    // support UTF-16:
	if (!aString || aString.length==0) return @"";
    NSString *stringToReturn = [aString substringWithRange:[aString rangeOfComposedCharacterSequenceAtIndex:0]];
	
    // OR no UTF-16 support:
    //NSString *stringToReturn = [aString substringToIndex:1];
	
    [self didAccessValueForKey:@"uppercaseFirstLetterOfName"];
    return stringToReturn;
}

@end
