//
//  SOLUserMapperImplementation.m
//  Social
//
//  Created by Vitaliy Rusinov on 4/10/16.
//  Copyright © 2016 Oleh Petrunko. All rights reserved.
//

#import "SOLUserMapperImplementation.h"
#import "SOLUserPlainObject.h"

@implementation SOLUserMapperImplementation

- (SOLUserPlainObject *)objectFromExternalRepresentation:(NSDictionary *)dictionary {
    
    SOLUserPlainObject *plain = [SOLUserPlainObject new];
    if (dictionary) {
        
        id guid = [dictionary objectForKey:@"id"];
        if([guid isKindOfClass:[NSString class]]) {
            
            plain.guid = (NSString *)guid;
        } else if([guid isKindOfClass:[NSNumber class]]) {
            
            plain.guid = ((NSNumber *)guid).stringValue;
        }
        
        id firstNameId = [dictionary objectForKey:@"first_name"];
        if([firstNameId isKindOfClass:[NSString class]]) {
            
            plain.firstName = (NSString *)firstNameId;
        }
        
        id lastNameId = [dictionary objectForKey:@"last_name"];
        if([lastNameId isKindOfClass:[NSString class]]) {
            
            plain.lastName = (NSString *)lastNameId;
        }
        
        id nickNameId = [dictionary objectForKey:@"nickname"];
        if([nickNameId isKindOfClass:[NSString class]]) {
            
            plain.nickName = (NSString *)nickNameId;
        }
        
        id photoLowId = [dictionary objectForKey:@"photo_50"];
        if([photoLowId isKindOfClass:[NSString class]]) {
            
            plain.photoLow = (NSString *)photoLowId;
        }
        
        id photoOrignId = [dictionary objectForKey:@"photo_200_orig"];
        if([photoOrignId isKindOfClass:[NSString class]]) {
            
            plain.photoOrign = (NSString *)photoOrignId;
        }
        
        id photoMiddleId = [dictionary objectForKey:@"photo_100"];
        if([photoMiddleId isKindOfClass:[NSString class]]) {
            
            plain.photoMiddle = (NSString *)photoMiddleId;
        }
        
        id mobilePhoneId = [dictionary objectForKey:@"mobile_phone"];
        if([mobilePhoneId isKindOfClass:[NSString class]]) {
            
            plain.mobilePhone = (NSString *)mobilePhoneId;
        }
        
        id onlineId = [dictionary objectForKey:@"online"];
        if([onlineId isKindOfClass:[NSNumber class]]) {
            
            plain.online = (NSNumber *)onlineId;
        }
        
        id onlineMobileId = [dictionary objectForKey:@"online_mobile"];
        if([onlineMobileId isKindOfClass:[NSNumber class]]) {
            
            plain.onlineMobile = (NSNumber *)onlineMobileId;
        }
    }
    
    return plain;
}

- (NSArray<SOLUserPlainObject *> *)arrayFromExternalRepresentation:(NSArray *)array {
    
    NSMutableArray<SOLUserPlainObject *> *list = [[NSMutableArray<SOLUserPlainObject *> alloc] initWithCapacity:array.count];
    for (NSDictionary *external in array) {
        
        [list addObject:[self objectFromExternalRepresentation:external]];
    }
    
    return list;
}

@end
