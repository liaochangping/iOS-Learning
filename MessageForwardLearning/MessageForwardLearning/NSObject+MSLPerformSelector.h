//
//  NSObject+MSLPerformSelector.h
//  MessageForwardLearning
//
//  Created by txooo on 2019/3/26.
//  Copyright © 2019 txooo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MSLPerformSelector)

- (id)performSelector:(SEL)selector withObjects:(NSArray *)objects;

@end

NS_ASSUME_NONNULL_END
