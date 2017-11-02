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
    }
    return self;
}

- (void) visitDoctor:(Doctor *) doctor {
    if (self.healthCard == YES) {
        [doctor acceptPatient:self];
        NSLog(@"You have been admitted");
    }
    else
        NSLog(@"You do not have a valid health card");
}

@end
