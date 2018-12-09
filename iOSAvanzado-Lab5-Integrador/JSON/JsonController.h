//
//  JsonController.h
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 9/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JsonController : NSObject
-(void)setFilePath:(NSString *)file;
-(NSDictionary *)readJSON;
@end

NS_ASSUME_NONNULL_END
