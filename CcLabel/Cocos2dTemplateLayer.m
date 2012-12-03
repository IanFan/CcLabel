//
//  Cocos2dTemplateLayer.m
//  BasicCocos2D
//
//  Created by Fan Tsai Ming on 12/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Cocos2dTemplateLayer.h"

@implementation Cocos2dTemplateLayer

+(CCScene *) scene {
	CCScene *scene = [CCScene node];	
	Cocos2dTemplateLayer *layer = [Cocos2dTemplateLayer node];
	[scene addChild: layer];
  
	return scene;
}

#pragma mark -
#pragma mark Init

-(id) init {
	if((self = [super init])) {
    
	}
	return self;
}

- (void) dealloc {
	[super dealloc];
}

@end
