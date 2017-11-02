//
//  main.m
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
Doctor *doctorOne = [[Doctor alloc] initWithFirstname:@"Larry" lastname:@"Luk" specialization:@"Surgery"];
NSLog(@"Hi, I am Dr. %@ and my specialization is %@", doctorOne.fullname, doctorOne.specialization);
        
Patient *patientOne = [[Patient alloc] initWithFirstname:@"Danny" lastname:@"Grosman" age:27 healthCard:YES];
NSLog(@"HI, I am %@ and I am %d years old", patientOne.fullname, patientOne.age);

[patientOne visitDoctor:doctorOne];
        
[doctorOne returnPrescription:patientOne];

//BOOL hasPatient = [doctorOne.patientList containsObject:patientOne];
//NSLog(@"Has Patient, %i", hasPatient);
        

    
    }
    return 0;
}
