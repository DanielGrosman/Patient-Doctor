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
NSLog(@"%@ %@", doctorOne.fullname, doctorOne.specialization);
        
Patient *patientOne = [[Patient alloc] initWithFirstname:@"Larry" lastname:@"Luk" age:31 healthCard:YES];
NSLog(@"%@ %d", patientOne.fullname, patientOne.age);

[patientOne visitDoctor:doctorOne];
    
    }
    return 0;
}
