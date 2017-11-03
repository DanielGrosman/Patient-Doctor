//
//  Prescription.m
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription
- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptionName = @"Tylenol";
    }
    return self;
}
// creates an NSString with the prescription name
- (NSString*) givePrescription {
    NSString *prescriptionResult = self.prescriptionName;
    return prescriptionResult;
}
@end
