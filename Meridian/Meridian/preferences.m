//
//  Preferences.m
// spongebob
//
//  Created by Ben Sparkes on 28/07/2018.
//

#import <Foundation/Foundation.h>

#import "preferences.h"

#define TweaksKey               @"tweaksAreEnabled"
#define StartLaunchDaemonsKey   @"startLaunchDaemonsEnabled"
#define BootNonceKey            @"bootNonce"
#define StartDropbearKey        @"startDropbearEnabled"
#define PortKey                 @"listenPortOption"

#define ELECTRA_GENERATOR       0xbd34a880be0b53f3

void setTweaksEnabled(BOOL enabled) {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:TweaksKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

BOOL tweaksAreEnabled() {
    NSNumber *enabled = [[NSUserDefaults standardUserDefaults] objectForKey:TweaksKey];
    
    return (enabled) ? [enabled boolValue] : true;
}

void setStartLaunchDaemonsEnabled(BOOL enabled) {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:StartLaunchDaemonsKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

BOOL startLaunchDaemonsIsEnabled() {
    NSNumber *enabled = [[NSUserDefaults standardUserDefaults] objectForKey:StartLaunchDaemonsKey];
    
    return (enabled) ? [enabled boolValue] : true;
}

void setBootNonceValue(uint64_t bootNonce) {
    [[NSUserDefaults standardUserDefaults] setInteger:bootNonce forKey:BootNonceKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

uint64_t getBootNonceValue() {
    NSInteger integer = [[NSUserDefaults standardUserDefaults] integerForKey:BootNonceKey];
    
    return (integer != 0x0) ? integer : ELECTRA_GENERATOR;
}

void setStartDropbearEnabled(BOOL enabled) {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:StartDropbearKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

BOOL startDropbearIsEnabled() {
    NSNumber *enabled = [[NSUserDefaults standardUserDefaults] objectForKey:StartDropbearKey];
    
    return (enabled) ? [enabled boolValue] : false;
}

void setListenPort(NSInteger portOption) {
    [[NSUserDefaults standardUserDefaults] setInteger:portOption forKey:PortKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

NSInteger listenPort(void) {
    NSNumber *portOption = [[NSUserDefaults standardUserDefaults] objectForKey:PortKey];
    
    return (portOption) ? portOption.integerValue : Port222222;
}
