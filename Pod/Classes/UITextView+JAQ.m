//
//  UITextView+HTML.m
//  Asthma-Info
//
//  Created by Javier Querol on 11/12/14.
//  Copyright (c) 2014 treeNovum. All rights reserved.
//

#import "UITextView+JAQ.h"

@implementation UITextView (JAQ)

- (void)jaq_setHTMLFromString:(NSString *)string {
	
	string = [string stringByAppendingString:[NSString stringWithFormat:@"<style>body{font-family: '%@'; font-size:%fpx;}</style>",
											  self.font.fontName,
											  self.font.pointSize]];
	self.attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
														   options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
																	 NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
												documentAttributes:nil
															 error:nil];
}

@end
