//
//  AppDelegate.m
//  Delegate
//
//  Created by Slava on 27.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "NormDoctor.h"
#import "BadDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSMutableArray *sickPatientArray = [NSMutableArray new];
    
    for (int i = 0; i < 11; i++) {
        Human *patient = [Human new];
        NSInteger randomValue = arc4random_uniform(36) + 8;     // from 36 to 42
        int sickPartOfTheBody = arc4random_uniform(3);    // from 0 to 3 - 1
        patient.name = [NSString stringWithFormat:@"%dPatient", i];
        patient.temperature = randomValue;
        patient.hurts = sickPartOfTheBody;
        
        patient.rating = arc4random_uniform(6);     //  from 0 to 5
        
        [sickPatientArray addObject:patient];
    }
    NormDoctor *drHous = [NormDoctor new];
    BadDoctor *drAverin = [BadDoctor new];
#pragma mark -stud_LVL
//    for (Human *obj in sickPatientArray) {
//        if (arc4random() % 2) {
//            NSLog(@"+++Good Doc+++");
//            [obj setDelegateNormDoctor:drHous];
//            [obj howAreYouBadDoc];
//            [obj patientBecameIllGoodDoc];
//        } else {
//            NSLog(@"+++Bad Doc+++");
//            [obj setDelegateBadDoctor:drAverin];
//            [obj howAreYouBadDoc];
//            [obj patientBecameIllBadDoc];
//        }
//    }
    
#pragma mark -mastr_lvl
//    NSMutableDictionary *unsortArrayGoodDr = [NSMutableDictionary new];
//    NSMutableDictionary *unsortArrayBadDr = [NSMutableDictionary new];
//    for (int i = 0; i < sickPatientArray.count; i++) {
//        Human *string = [sickPatientArray objectAtIndex:i];
//        if (arc4random() % 2) {
//            NSLog(@"+++Good Dr+++");
//            [string setDelegateNormDoctor:drHous];
//            NSLog(@"What Hurts, %@", string.name);
//            if (string.hurts == 0) {
//                [string headache];
//            } else if ( string.hurts == 1) {
//                [string stomachHerts];
//            } else {
//                [string soreLeg];
//            }
//            [unsortArrayGoodDr setObject:string forKey:[NSString stringWithFormat:@"%d, %u", i,string.hurts]];
//        } else {
//            NSLog(@"---Bad Dr---");
//            [string setDelegateBadDoctor:drAverin];
//            NSLog(@"What Hurts, %@", string.name);
//            if (string.hurts == 0) {
//                [string headache];
//            } else if ( string.hurts == 1) {
//                [string stomachHerts];
//            } else {
//                [string soreLeg];
//            }
//            [unsortArrayBadDr setObject:string forKey:[NSString stringWithFormat:@"%d, %d", i, string.hurts]];
//        }
//    }
//    NSLog(@"Raport good doctor");
//    NSArray *sortArrayGoodDr = [unsortArrayGoodDr keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        NSString *first = [NSString stringWithFormat:@"%u", [(Human *) obj1 hurts]];
//        NSString *second = [NSString stringWithFormat:@"%u", [(Human *) obj2 hurts]];
//        return [first compare:second];
//    }];
//    for (int i = 0; i < sortArrayGoodDr.count; i++) {
//        NSString *obj = [sortArrayGoodDr objectAtIndex:i];
//        NSLog(@"%@ - %u", [unsortArrayGoodDr [obj] name], [unsortArrayGoodDr [obj] hurts]);
//    }
//    NSLog(@"Raport good doctor");
//    NSArray *sotrArrayBadDr = [unsortArrayBadDr keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        NSString *first = [NSString stringWithFormat:@"%u", [(Human *) obj1 hurts]];
//        NSString *second = [NSString stringWithFormat:@"%u", [(Human *) obj2 hurts]];
//        return [first compare:second];
//    }];
//    for (int i = 0; i < sotrArrayBadDr.count; i++) {
//        NSString *obj = [sotrArrayBadDr objectAtIndex:i];
//        NSLog(@"%@ - %u",[unsortArrayBadDr [obj] name] , [unsortArrayBadDr [obj] hurts]);
//    }
    
#pragma mark -Superman
//    for (Human *obj in sickPatientArray) {
//        if (arc4random() % 2) {
//            NSLog(@"+++Good Dr+++");
//            [obj setDelegateNormDoctor:drHous];
//            NSLog(@"Rating - %ld", obj.rating);
//            
//        } else {
//            NSLog(@"---Bad Dr---");
//            [obj setDelegateBadDoctor:drAverin];
//            NSLog(@"Rating - %ld", obj.rating);
//        }
//        
//    }
    NSMutableArray *disgruntledPatientHous = [NSMutableArray new];
    NSMutableArray *disgruntledPatientAverin = [NSMutableArray new];
    for (int i = 0; i < sickPatientArray.count; i++) {
        Human *obj = [sickPatientArray objectAtIndex:i];
        if (arc4random() % 2) {
            NSLog(@"+++Good Dr+++");
            [obj setDelegateNormDoctor:drHous];
            NSLog(@"Rating - %ld", obj.rating);
            
            // если лечение не понравилось
//            if (obj.rating <= 3) {
//                [disgruntledPatientHous addObject:obj];
//            }
            [obj patientDicision];

            
        } else {
            NSLog(@"---Bad Dr---");
            [obj setDelegateBadDoctor:drAverin];
            NSLog(@"Rating - %ld", obj.rating);
            
            // если лечение не понравилось
//            if (obj.rating <= 3) {
//                [disgruntledPatientAverin addObject:obj];
//            }
            [obj patientDicision];
        }
    }
    

    NSLog(@"%@", disgruntledPatientAverin);
    NSLog(@"%@", disgruntledPatientHous);

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
