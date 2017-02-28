//
//  BadDoctor.m
//  Delegate
//
//  Created by Slava on 27.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "BadDoctor.h"

@implementation BadDoctor

- (void) badDocPatientFeelBad:(Human *)patient {
    if (patient.temperature >= 36 && patient.temperature <= 39) {
        [patient makeShot];
    } else if (patient.temperature > 39) {
        [patient drinkTea];
    } else {
        NSLog(@"Not to me, %@", patient.name);
    }
}

- (void) badDocPatientWorse:(Human *)patient {
    [patient takePill];
}



@end
