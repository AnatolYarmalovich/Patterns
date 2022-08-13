//
//  CellPhoneOSVersionReader.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 13.08.22.
//

#import "CellPhoneOSVersionReader.h"
#import "iOSCellPhone.h"
#import "AndroidCellPhone.h"

@implementation CellPhoneOSVersionReader

-(NSString *)visitIOSPhone:(iOSCellPhone *)phone {
    return [phone getOSVersion];
}

-(NSString *)visitAndroidPhone:(AndroidCellPhone *)phone {
    return [phone getOSVersion];
}

@end
