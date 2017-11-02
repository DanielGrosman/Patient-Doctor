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

- (void) visitDoctor:(Doctor *) doctor {
    if (self.healthCard == YES) {
        [doctor acceptPatient:self];
        NSLog(@"Thank you for providing your health card. You have been admitted as a patient");
    }
    else
        NSLog(@"Sorry, you do not have a valid health card");
}

- (void)patientSymptoms:(NSString *)symptoms {
    _symptoms = symptoms;
}


- (void) requestMedication:(Doctor *)doctor {
    if ([doctor.patientList containsObject:self]) {
        [doctor returnPrescription:self];
    }
}

@end
