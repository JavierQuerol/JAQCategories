//
//  NSString+EmailValidation.h
//  Asthma-Info
//
//  Created by Javier Querol on 12/11/14.
//  Copyright (c) 2014 treeNovum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JAQ)

- (BOOL)jaq_stringIsValidEmail;
- (NSString *)jaq_secureWithSalt:(NSString *)salt;
- (CGFloat)heigthWithWidth:(CGFloat)width andFont:(UIFont *)font;
- (CGFloat)widthWithFont:(UIFont *)font;

@end
