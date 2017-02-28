//
//  NormDoctor.m
//  Delegate
//
//  Created by Slava on 27.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "NormDoctor.h"
@implementation NormDoctor

- (void) patientFeelBad:(Human *)patient {
    if (patient.temperature > 37 && patient.temperature <= 39) {
        [patient takePill];
    } else if (patient.temperature > 39) {
        [patient makeShot];
    }
}

- (void) patientWorse:(Human *)patient {
    NSLog(@"Urgent hospitalization, %@", patient.name);
}



@end
