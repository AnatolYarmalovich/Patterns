//
//  UserSettingManager.h
//  Singleton
//
//  Created by Anatol Uarmolovich on 23.06.22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserSetting : NSObject

+(instancetype)manager;

-(void)readSettings;
-(void)writeSettings;


@end

NS_ASSUME_NONNULL_END
