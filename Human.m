//
//  Human.m
//  Delegate
//
//  Created by Slava on 27.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Human.h"

@implementation Human


- (BOOL) howAreYouGoodDoc {
    BOOL youOk = arc4random() % 2;
    if (!youOk) {
        NSLog(@"%@, is bad", self.name);
        [self.delegateNormDoctor patientFeelBad:self];
    }
    return youOk;
}

- (BOOL) howAreYouBadDoc {
    BOOL areYouOk = arc4random() % 2;
    if (!areYouOk) {
        NSLog(@"%@, is bad", self.name);
        [self.delegateBadDoctor badDocPatientFeelBad:self];
    }
    return areYouOk;
}

- (BOOL) patientBecameIllGoodDoc {
    BOOL isSick = arc4random() % 2;
    if (isSick) {
        [self.delegateNormDoctor patientWorse:self];
    }
    return isSick;
}

- (BOOL) patientBecameIllBadDoc {
    BOOL isSick = arc4random() % 2;
    if (isSick) {
        [self.delegateBadDoctor badDocPatientWorse:self];
    }
    return isSick;
}

// способы лечения
- (void) takePill {
    NSLog(@"Patient %@, take a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Patient %@, make a shot", self.name);
}

- (void) drinkTea {
    NSLog(@"пей чай");
}

// что болит
- (void) headache {
    NSLog(@"Голова");
}

- (void) stomachHerts {
    NSLog(@"Живот");
}

- (void) soreLeg {
    NSLog(@"Нога");
}

// решаем, нравиться пациенту лечение или нет
- (void) patientDicision {
    if (self.rating < 3) {
        NSLog(@"Chenge doc");
    } else {
        NSLog(@"Norm Doc");
    }
}

@end
