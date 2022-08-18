//
//  CellPhone.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <Foundation/Foundation.h>
@protocol CharacteristicsVisitor;
@protocol CellPhone
-(void)acceptCharacteristicsVisitor:(id<CharacteristicsVisitor>)reader;
@end
