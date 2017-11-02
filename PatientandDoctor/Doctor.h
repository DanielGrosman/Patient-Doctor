//
//  Doctor.h
//  PatientandDoctor
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;


@interface Doctor : NSObject

@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;
@property (readonly) NSString *fullname;
@property (nonatomic, assign) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;

- (instancetype) initWithFirstname: (NSString *) firstname lastname:(NSString *) lastname specialization: (NSString *) specialization;
- (void) acceptPatient:(Patient *)patient;

@end
