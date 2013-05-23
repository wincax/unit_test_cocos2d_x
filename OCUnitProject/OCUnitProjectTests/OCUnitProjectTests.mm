//
//  OCUnitProjectTests.m
//  OCUnitProjectTests
//
//  Created by michaelwong on 5/22/13.
//
//

#import "OCUnitProjectTests.h"
#include "cocos2d.h"
#include "HelloWorldScene.h"

USING_NS_CC;

@implementation OCUnitProjectTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
//    STFail(@"Unit tests are not implemented yet in OCUnitProjectTests");
  // create a scene. it's an autorelease object
  cocos2d::CCScene *pScene = HelloWorld::scene();
  STAssertTrue((pScene != NULL), @"Unit tests are not implemented yet in OCUnitProjectTests");
}

@end
