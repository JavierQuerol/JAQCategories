//
//  UILabel+HTML.m
//  TicketManager
//
//  Created by Javier Querol on 02/10/14.
//  Copyright (c) 2014 treeNovum. All rights reserved.
//

#import "UILabel+JAQ.h"

@implementation UILabel (JAQ)

- (void)jaq_setStringFromHTMLString:(NSString *)string {
	NSString *style = [NSString stringWithFormat:@"<style>body{font-family: '%@'; font-size:%fpx;}</style>",
					   self.font.fontName,
					   self.font.pointSize];
	
	string = [string stringByAppendingString:style];
    self.attributedText = [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding]
                                                           options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
																	 NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)}
												documentAttributes:nil
                                                             error:nil];
}

@end
