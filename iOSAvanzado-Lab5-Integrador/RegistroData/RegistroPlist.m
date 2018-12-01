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

-(void)writePlistDictionary:(NSDictionary *)data{
    NSMutableDictionary *plistDict = [[NSMutableDictionary alloc]initWithContentsOfFile:self.filePath];
    
    for(NSString *keyData in data){
        [plistDict setObject:data[keyData] forKey:keyData];
    }
         
    [plistDict writeToFile:self.filePath atomically:YES];
}

-(void)updatePlistDictionary:(NSDictionary *)data{
    NSMutableDictionary *plistDict = [[NSMutableDictionary alloc]initWithContentsOfFile:self.filePath];
    
    /*for(NSString *k in plistDict){
        NSLog(@"%@", plistDict[k]);
    }*/
    
    for(NSString *keyData in data){
        plistDict[keyData] = data[keyData];
    }
    
    /*for(NSString *k in plistDict){
        NSLog(@"%@", plistDict[k]);
    }*/
    
    [plistDict writeToFile:self.filePath atomically:NO];
}

-(NSDictionary *)readPlist{
    NSDictionary *plistDict = [[NSDictionary alloc]initWithContentsOfFile:self.filePath];
    return plistDict;
}

@end
