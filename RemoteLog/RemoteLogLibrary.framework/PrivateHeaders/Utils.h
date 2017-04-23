//
//  Utils.h
//  MonitorLibrary
//
//  Created by Will Powell on 25/03/2016.
//  Copyright © 2016 AiFlex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Utils : NSObject

+(void)swizzle:(Class) class original:(SEL) originalSelector new:(SEL) swizzledSelector;

//+(NSDictionary *) deviceInfo;

@end
