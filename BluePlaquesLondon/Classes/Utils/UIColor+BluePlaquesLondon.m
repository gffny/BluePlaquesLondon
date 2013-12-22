/*
 Copyright 2012 - 2013 UpwardsNorthwards
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "UIColor+BluePlaquesLondon.h"

@implementation UIColor (BluePlaquesLondon)

+ (UIColor *)darkBlueColour
{
    static UIColor *darkBlueColour;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        darkBlueColour = [UIColor colorWithRed:14.0f/255.0f green:56.0f/255.0f blue:132.0f/255.0f alpha:1.0];
    });
    return darkBlueColour;
}

+ (UIColor *)lightGreyColour
{
    static UIColor *lightGreyColour;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        lightGreyColour = [UIColor colorWithRed:239.0/255.0 green:239.0/255.0 blue:239.0/255.0 alpha:1.0];
    });
    return lightGreyColour;
}

+ (UIColor *)lightYellowColour
{
    static UIColor *lightYellowColour;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        lightYellowColour = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:18.0f/255.0f alpha:1.0];
    });
    return lightYellowColour;
}

@end
