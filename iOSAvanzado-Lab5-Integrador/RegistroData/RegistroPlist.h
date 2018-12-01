//
//  RegistroPlist.h
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 1/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegistroPlist : NSObject
-(void)setFilePath:(NSString *)file;
-(void)writePlist:(NSString *)key :(NSString *) value;
-(NSDictionary *)readPlist;
@end
