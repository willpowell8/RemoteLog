//
//  ScreenShot.h
//  MonitorLibrary
//
//  Created by Will Powell on 25/03/2016.
//  Copyright © 2016 AiFlex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenShot : NSObject

+(void)screenshotWithTouch:(UITouch *) touch element:(NSMutableDictionary *) element;
+(void)screenshotWithElement:(NSMutableDictionary *) element;
+(void)screenshot:(UIView *)view element:(NSMutableDictionary *) element;

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize;
@end
