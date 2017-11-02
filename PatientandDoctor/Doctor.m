//
//  Doctor.m
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (NSString *) fullname {
    return [NSString stringWithFormat:@"%@ %@", self.firstname, self.lastname];
              }

- (instancetype) initWithFirstname: (NSString *) firstname lastname:(NSString *) lastname specialization: (NSString *) specialization; {
        self = [super init];
        if (self) {
            _specialization = specialization;
            _firstname = firstname;
            _lastname = lastname;
        }
        return self;
    }

- (void) acceptPatient:(Patient *)patient {
    [self.patientList addObject:patient];
}

@end
