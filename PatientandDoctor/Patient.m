//
//  Patient.m
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (NSString *) fullname {
    return [NSString stringWithFormat:@"%@ %@", self.firstname, self.lastname];
}

- (instancetype) initWithFirstname:(NSString *)firstname lastname:(NSString *)lastname age:(int)age healthCard:(BOOL)healthCard {
    self = [super init];
    if (self) {
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _healthCard = healthCard;
        _prescriptionList = [[NSMutableArray alloc] init];
    }
    return self;
}

// if the patient has a healthCard, then the acceptPatient method is initiated, which just adds the patient to the doctors patientList. reutns a message to the patient if he has been accepted
- (void) visitDoctor:(Doctor *) doctor {
    if (self.healthCard == YES) {
        [doctor acceptPatient:self];
        NSLog(@"Thank you for providing your health card. You have been admitted as a patient");
    }
    else
        NSLog(@"Sorry, you do not have a valid health card");
}

// initiates the patient symptoms
- (void)patientSymptoms:(NSString *)symptoms {
    _symptoms = symptoms;
}

//if the patient exists in the doctors patientlist (they ahve been accepted), runs the return prescription method, which prints the users prescription.
- (void) requestMedication:(Doctor *)doctor {
    if ([doctor.patientList containsObject:self]) {
        [doctor returnPrescription:self];
    }
}

@end
