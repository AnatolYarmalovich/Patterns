//
//  CellPhone.h
//  Patterns
//
//  Created by Anatol Uarmolovich on 29.07.22.
//

#import <Foundation/Foundation.h>

#ifndef CharacteristicsReader_h
#define CharacteristicsReader_h
@class CharacteristicsVisitor;

@interface CellPhone : NSObject

-(void)acceptCharacteristicsReader:(CharacteristicsVisitor *)reader;

@end

#endif /* CharacteristicsReader_h */
