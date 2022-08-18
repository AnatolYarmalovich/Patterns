//
//  CharacteristicsVisitor.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <Foundation/Foundation.h>

@protocol CellPhone;

@protocol CharacteristicsVisitor
-(void)visitIOSPhone:(id<CellPhone>)phone;
-(void)visitAndroidPhone:(id<CellPhone>)phone;
@end

