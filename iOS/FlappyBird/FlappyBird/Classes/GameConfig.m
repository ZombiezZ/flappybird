//
//  GameConfig.m
//  FlappyBird
//
//  Created by Hai Do Minh on 3/6/14.
//  Copyright (c) 2014 Hai Do Minh. All rights reserved.
//

#import "GameConfig.h"

@implementation GameConfig

static NSMutableDictionary* atlasInfo;

+ (NSMutableDictionary*) atlasInfo {
    @synchronized(self) {
        return atlasInfo;
    }
}
+ (void) setAtlasInfo:(NSMutableDictionary*) val {
    @synchronized(self) {
        atlasInfo = val;
    }
}

+(CCTexture*) atlas {
    @synchronized(self) {
        return [[CCTextureCache sharedTextureCache] textureForKey:@"atlas.png"];
    }
}

@end
