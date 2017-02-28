//
//  Human.h
//  Delegate
//
//  Created by Slava on 27.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol NormDoctorProtocol;
@protocol BadDoctorProtocol;

@interface Human : NSObject

typedef enum {
    Head = 0,
    Stomach = 1,
    leg = 2
} PartOfBody;

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger temperature;
@property (weak, nonatomic) id <NormDoctorProtocol> delegateNormDoctor;
@property (weak, nonatomic) id <BadDoctorProtocol> delegateBadDoctor;
@property (assign, nonatomic) PartOfBody hurts;
@property (assign, nonatomic) NSInteger rating;


- (BOOL) howAreYouGoodDoc;
- (BOOL) howAreYouBadDoc;
- (BOOL) patientBecameIllGoodDoc;
- (BOOL) patientBecameIllBadDoc;

- (void) takePill;
- (void) makeShot;
- (void) drinkTea;

// что болит:
- (void) headache;      // болтит голова
- (void) stomachHerts;  // болит живот
- (void) soreLeg;       // болит нога

// решаем, нравиться пациенту лечение или нет
- (void) patientDicision;

@end


@protocol NormDoctorProtocol <NSObject>

- (void) patientFeelBad: (Human *) patient;
- (void) patientWorse: (Human *) patient;



@end
@protocol BadDoctorProtocol <NSObject>

- (void) badDocPatientFeelBad: (Human *) patient;
- (void) badDocPatientWorse: (Human *) patient;




@end
