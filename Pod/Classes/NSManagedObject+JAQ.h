//
//  NSManagedObject+FirstLetter.h
//  Fraternity
//
//  Created by Javier Querol on 02/12/13.
//  Copyright (c) 2013 treeNovum. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (JAQ)
- (NSString *)jaq_uppercaseFirstLetterOfName;
@end
