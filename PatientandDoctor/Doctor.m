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
// concatonates the first name and last name into one name, called fullname
- (NSString *) fullname {
    return [NSString stringWithFormat:@"%@ %@", self.firstname, self.lastname];
              }
// initialized the patientlist array (if it is empty)
- (NSMutableArray *) patientList {
    if (_patientList == nil) {
        _patientList = [[NSMutableArray alloc] init];
    }
    
    return _patientList;
}

// custom initializer for the doctor's information
- (instancetype) initWithFirstname: (NSString *) firstname lastname:(NSString *) lastname specialization: (NSString *) specialization; {
        self = [super init];
        if (self) {
            _specialization = specialization;
            _firstname = firstname;
            _lastname = lastname;
        }
        return self;
    }
// add every patient into the patientList array
- (void) acceptPatient:(Patient *)patient {
    [self.patientList addObject:patient];
}

// initializes an instance of prescription and adds it to the prescriptionList array. Logs out the prescription and returns it to the user
-(void)returnPrescription:(Patient *)patient {
    //if ([patient.symptoms isNotEqualTo:(@"N/A")]) {
        Prescription *prescription = [[Prescription alloc] init];
        [patient.prescriptionList addObject:prescription];
        NSLog(@"Your Prescription is: %@", [prescription givePrescription]);
    }



@end
