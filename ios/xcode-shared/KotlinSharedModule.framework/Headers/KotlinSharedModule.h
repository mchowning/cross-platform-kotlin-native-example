#import <Foundation/Foundation.h>

@class KSMZipHandler;

NS_ASSUME_NONNULL_BEGIN

@interface KotlinBase : NSObject
-(instancetype) init __attribute__((unavailable));
+(instancetype) new __attribute__((unavailable));
+(void)initialize __attribute__((objc_requires_super));
@end;

__attribute__((objc_subclassing_restricted))
@interface KSMZipHandler : KotlinBase
-(instancetype)init NS_SWIFT_NAME(init()) NS_DESIGNATED_INITIALIZER;

-(NSString*)handleInputInput:(NSString*)input NS_SWIFT_NAME(handleInput(input:));
@end;

NS_ASSUME_NONNULL_END
