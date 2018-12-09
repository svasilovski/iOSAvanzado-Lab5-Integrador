//
//  JsonController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 9/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "JsonController.h"

@interface JsonController()
@property (nonatomic, strong) NSString *filePath;
@property (nonatomic, strong) NSData *content;
@end

@implementation JsonController

-(void)setFilePath:(NSString *)file{
    _filePath =[[NSBundle mainBundle]pathForResource:file ofType:@"json"];
    _content = [[NSData alloc]initWithContentsOfFile:self.filePath];
}

-(NSDictionary *)readJSON{
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:self.content options:0 error:nil];
    return dataDictionary;
}
@end
