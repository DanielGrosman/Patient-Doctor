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

//        NSLog(@"Docter: First Name?");
//        char userFirstInput [10];
//        fgets(userFirstInput, 10, stdin);
//        NSString * firstInput = [NSString stringWithUTF8String:userFirstInput];
//        NSString *parsedFirstInput = [firstInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        NSString *patientFirst = parsedFirstInput;
//
//        NSLog(@"Docter: Last Name?");
//        char userLastInput [10];
//        fgets(userLastInput, 10, stdin);
//        NSString * lastInput = [NSString stringWithUTF8String:userLastInput];
//        NSString *parsedLastInput = [lastInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        NSString *patientLast = parsedLastInput;
//
//        NSLog(@"Docter: Age");
//        char userAgeInput [10];
//        fgets(userAgeInput, 10, stdin);
//        NSString * ageInput = [NSString stringWithUTF8String:userAgeInput];
//        NSString *parsedAgeInput = [ageInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        NSString *patientAge = parsedAgeInput;
//
//        NSLog(@"Thank you. To confirm, your name is %@ %@, and your age is %@", patientFirst, patientLast, patientAge);

        
        
Doctor *doctorOne = [[Doctor alloc] initWithFirstname:@"Larry" lastname:@"Luk" specialization:@"Surgery"];
NSLog(@"%@ %@", doctorOne.fullname, doctorOne.specialization);
Patient *patientOne = [[Patient alloc] initWithFirstname:@"Larry" lastname:@"Luk" age:31 healthCard:YES];
NSLog(@"%@ %d", patientOne.fullname, patientOne.age);

[patientOne visitDoctor:doctorOne];

BOOL hasPatient = [doctorOne.patientList containsObject:patientOne];
NSLog(@"Has Patient, %i", hasPatient);
        

    
    }
    return 0;
}
