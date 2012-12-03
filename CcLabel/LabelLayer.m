//
//  LabelLayer.m
//  BasicCocos2D
//
//  Created by Fan Tsai Ming on 11/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LabelLayer.h"

@implementation LabelLayer

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];	
	LabelLayer *layer = [LabelLayer node];
	[scene addChild: layer];
  
	return scene;
}

#pragma mark -
#pragma mark CCLabel

-(void)setCCLabel {
  CGSize winSize = [CCDirector sharedDirector].winSize;
  
  //create TTFLabel with standard setting
  CCLabelTTF *standardLabel = [CCLabelTTF labelWithString:@"CCLabelTTF with standard setting" fontName:@"Helvetica" fontSize:28];
  [standardLabel setPosition:ccp(winSize.width/2, winSize.height/2 + 80)];
  [self addChild:standardLabel];
  
  //create TTFLabel with dimensions, alignment, lineBreakMode
//    CCLabelTTF *leftLabel = [CCLabelTTF labelWithString:@"dimensions, alignment, lineBreakMode" fontName:@"Helvetica" fontSize:32 dimensions:CGSizeMake(520, 32)  hAlignment:kCCTextAlignmentCenter]; //same method in different Cocos2D version
  CCLabelTTF *dimensionLabel = [CCLabelTTF labelWithString:@"CCLabelTTF with dimensions, alignment, lineBreakMode" dimensions:CGSizeMake(winSize.width, 16) hAlignment:kCCTextAlignmentCenter fontName:@"Helvetica" fontSize:18];
  [dimensionLabel setPosition:ccp(winSize.width/2, winSize.height/2)];
  [self addChild:dimensionLabel];
  
  //create TTFLabel with a custom font:
  //1. Add .ttf file to the project (check "outback.ttf" in MyResources/Font folder in Xcode)
  //2. Add "Fonts provided by application" in "info.plist" (in Resources folder), type FontName.ttf in item ("outback.ttf" in this case)
  //Check the "addFontInInfoPlist.png" to know how to do step "2.".
  CCLabelTTF *customFontLabel = [CCLabelTTF labelWithString:@"CCLabelTTF with a custom font" fontName:@"outback" fontSize:28];
  [customFontLabel setColor:ccc3(255,255,0)];
  [customFontLabel setPosition:ccp(winSize.width/2, winSize.height/2 - 80)];
  [customFontLabel setAnchorPoint:ccp(0.5f, 0.5f)];
  [self addChild:customFontLabel];
  
  //detect the device if it is an iPhone or iPad
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    standardLabel.fontSize = 24;
    dimensionLabel.fontSize = 18;
    customFontLabel.fontSize = 24;
  }
}

#pragma mark -
#pragma mark Init

/*
 Target: Set many types of CCLabel and set a custom font.
 
 1. Set CCLabelTTF with standard setting.
 2. Set CCLabelTTF with dimensions, alignment, lineBreakMode.
 3. Set TTFLabel with a custom font.
*/

-(id) init
{
	if( (self=[super init])) {
    [self setCCLabel];
    
	}
	return self;
}

- (void) dealloc
{
	[super dealloc];
}

@end
