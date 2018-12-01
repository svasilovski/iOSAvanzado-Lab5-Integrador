//
//  RegistroPlist.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 1/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "RegistroPlist.h"

@interface RegistroPlist()
@property (nonatomic, strong) NSString *filePath;
@end

@implementation RegistroPlist

-(void)setFilePath:(NSString *)file{
    _filePath = [[NSBundle mainBundle] pathForResource:file ofType:@"plist"];
}

-(void)writePlist:(NSString *)key :(NSString *) value{
    NSMutableDictionary *plistDict = [[NSMutableDictionary alloc]initWithContentsOfFile:self.filePath];
    
    [plistDict setObject:value forKey:key];
    
    [plistDict writeToFile:self.filePath atomically:YES];
}

-(NSDictionary *)readPlist{
    NSDictionary *plistDict = [[NSDictionary alloc]initWithContentsOfFile:self.filePath];
    return plistDict;
}

@end
