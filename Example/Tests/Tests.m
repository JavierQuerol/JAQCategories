//
//  Tests.m
//  JAQCategories
//
//  Created by Javier Querol on 22/12/14.
//  Copyright (c) 2014 Javier Querol. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import <UILabel+JAQ.h>
#import <NSString+JAQ.h>
#import <NSArray+JAQ.h>

@interface Tests : XCTestCase
@end

@implementation Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLabelHTML {
    // This is an example of a functional test case.
	NSString *string = @"This is a <strong>test</strong>";
	
	NSString *strippedString = [string stringByReplacingOccurrencesOfString:@"<strong>" withString:@""];
	strippedString = [strippedString stringByReplacingOccurrencesOfString:@"</strong>" withString:@""];
	
	UILabel *label = [UILabel new];
	[label jaq_setStringFromHTMLString:string];
	
	XCTAssertTrue([label.attributedText.string isEqualToString:strippedString]);
}

- (void)testEmailValidation {
	NSString *email = @"thisisa@test.com";
	XCTAssertTrue([email jaq_stringIsValidEmail]);
	
	NSString *notEmail = @"this_is_not_an@email";
	XCTAssertFalse([notEmail jaq_stringIsValidEmail]);
}

- (void)testSecureString {
	NSString *string = @"This is only a test";
	XCTAssertEqual([string jaq_secure].length, 64);
}

- (void)testArrayMap {
	NSArray *array = @[@0,@1,@44];
	NSArray *newArray = [array jaq_map:^id(NSNumber *item) {
		return @([item integerValue]+1);
	}];
	
	XCTAssert(array.count==newArray.count);
	
	for (NSInteger i=0; i<array.count; i++) {
		XCTAssert([(NSNumber *)array[i] integerValue]+1==[(NSNumber *)newArray[i] integerValue]);
	}
}

- (void)testArrayFilter {
	NSArray *array = @[@"1234",@"123",@"12",@"12345",@"1",@"123456"];
	NSArray *longItems = [array jaq_filter:^id(NSString *item) {
		if (item.length>4) return item;
		return nil;
	}];
	
	XCTAssertTrue(longItems.count==2);
	
	for (NSString *item in longItems) {
		XCTAssertTrue(item.length>4);
	}
}

@end
