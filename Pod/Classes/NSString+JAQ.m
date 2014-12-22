//
//  NSString+EmailValidation.m
//  Asthma-Info
//
//  Created by Javier Querol on 12/11/14.
//  Copyright (c) 2014 treeNovum. All rights reserved.
//

#import <CocoaSecurity.h>
#import "NSString+JAQ.h"

@implementation NSString (JAQ)

- (BOOL)jaq_stringIsValidEmail {
	BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
	NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
	NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
	NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
	NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
	return [emailTest evaluateWithObject:self];
}

- (NSString *)jaq_secureWithSalt:(NSString *)salt {
	return [CocoaSecurity sha256:[NSString stringWithFormat:@"%@%@", self, salt]].hexLower;
}

- (CGFloat)widthWithFont:(UIFont *)font {
	NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
	return [[[NSAttributedString alloc] initWithString:self attributes:attributes] size].width;
}

- (CGFloat)heigthWithWidth:(CGFloat)width andFont:(UIFont *)font {
	NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
	[attrStr addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self length])];
	CGRect rect = [attrStr boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
										options:NSStringDrawingUsesLineFragmentOrigin
										context:nil];
	return rect.size.height;
}

@end
