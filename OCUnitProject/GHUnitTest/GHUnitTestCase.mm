//
//  GHUnitTestCase.m
//  OCUnitProject
//
//  Created by michaelwong on 5/22/13.
//
//

#import "GHUnitTestCase.h"
#include "cocos2d.h"
#include "HelloWorldScene.h"
#import "OCMock.h"

USING_NS_CC;

@implementation GHUnitTestCase


- (void)testSimplePass {
	// Another test
}

- (void)testSimpleFail {
//  cocos2d::CCScene *pScene = HelloWorld::scene();
//	GHAssertTrue((pScene == NULL), nil);
}


@end

@interface SampleLibTest : GHTestCase { }
@end

@implementation SampleLibTest

- (void)testSimplePass {
  // Another test
}

- (void)testSimpleFail {
  GHAssertTrue(NO, nil);
}

// simple test to ensure building, linking,
// and running test case works in the project
- (void)testOCMockPass {
  id mock = [OCMockObject mockForClass:NSString.class];
  [[[mock stub] andReturn:@"mocktest"] lowercaseString];
  
  NSString *returnValue = [mock lowercaseString];
  GHAssertEqualObjects(@"mocktest", returnValue,
                       @"Should have returned the expected string.");
}

- (void)testOCMockFail {
  id mock = [OCMockObject mockForClass:NSString.class];
  [[[mock stub] andReturn:@"mocktest"] lowercaseString];
  
  NSString *returnValue = [mock lowercaseString];
  GHAssertEqualObjects(@"thisIsTheWrongValueToCheck",
                       returnValue, @"Should have returned the expected string.");
}

@end