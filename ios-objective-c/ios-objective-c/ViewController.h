//
//  ViewController.h
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>

//Number Values for each value of emotion. Add new emotions to the bottom of list, sort will not
//be effected in this declartion
typedef enum : NSUInteger {
    CTEmotionNone = 0,
    CTEmotionHappy = 1,
    CTEmotionOkay = 2,
    CTEmotionNeutral = 3,
    CTEmotionSad = 4,
    CTEmotionUnhappy = 5,
    CTEmotionVeryHappy = 6
    
} CDEmotions;

//Here is where the title for each number value will be transalated
static inline NSString * NSEmotionTitleForEmotion( CDEmotions emotion) {
    switch (emotion) {
        case CTEmotionNone:
            return @"Empty"; break;
        case CTEmotionVeryHappy:
            return @"Very Happy"; break;
        case CTEmotionHappy:
            return @"Happy"; break;
        case CTEmotionOkay:
            return @"Okay"; break;
        case CTEmotionNeutral:
            return @"Neutral"; break;
        case CTEmotionSad:
            return @"Sad"; break;
        case CTEmotionUnhappy:
            return @"Unhappy"; break;
            
    }
    
}

//Sorted int values in this array. Sort will be shown here. Do not put text in here, because then
//to know what "Very Happy" is you'll ahve to compare it to a string vs just saying 1 == 1, that
//means CTEmotionHappy
static inline NSArray * NSEmotionsList() {
    return [NSArray arrayWithObjects:
            @(CTEmotionNone),
            @(CTEmotionVeryHappy),
            @(CTEmotionHappy),
            @(CTEmotionOkay),
            @(CTEmotionNeutral),
            @(CTEmotionSad),
            @(CTEmotionUnhappy), nil];
    
}

@interface ViewController : UIViewController


@end

