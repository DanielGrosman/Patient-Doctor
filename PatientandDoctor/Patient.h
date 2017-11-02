//
//  Patient.h
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;
@property (readonly) NSString *fullname;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, assign) NSString *symptoms;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

- (instancetype) initWithFirstname: (NSString *) firstname lastname:(NSString *) lastname age:(int) age healthCard:(BOOL) healthCard;
- (void) patientSymptoms:(NSString *) symptoms;
- (void) visitDoctor:(Doctor *) doctor;
- (void) requestMedication:(Doctor *) doctor;

@end
