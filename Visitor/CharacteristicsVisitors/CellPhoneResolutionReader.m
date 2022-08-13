//
//  CellPhoneResolutionReader.m
//  Visitor
//
//  Created by Anatol Uarmolovich on 11.08.22.
//

#import "CellPhoneResolutionReader.h"
#import "iOSCellPhone.h"
#import "AndroidCellPhone.h"

@implementation CellPhoneResolutionReader

-(NSString *)visitIOSPhone:(iOSCellPhone *)phone {
    return [phone getResolution];
}

-(NSString *)visitAndroidPhone:(AndroidCellPhone *)phone {
    return [phone getResolution];
}

@end
