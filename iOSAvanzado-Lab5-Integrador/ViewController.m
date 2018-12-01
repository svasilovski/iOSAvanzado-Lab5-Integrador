//
//  ViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 24/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "RegistroData/RegistroPlist.h"

@interface ViewController ()
@property(nonatomic) RegistroPlist *plistRegistro;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.plistRegistro=[RegistroPlist new];
    [self.plistRegistro setFilePath:@"Registro"];
    self.verificarDatos;
}

- (void)verificarDatos{
    NSDictionary *datos = [self.plistRegistro readPlist];
    for(NSString *k in datos){
        NSLog(@"%@", datos[k]);
    }
}

@end
