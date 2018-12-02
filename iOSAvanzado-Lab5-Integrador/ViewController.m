//
//  ViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 24/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "RegistroData/RegistroPlist.h"

static NSString *const keyUser = @"user";
static NSString *const keyPass = @"passwd";

@interface ViewController ()
@property(nonatomic) RegistroPlist *plistRegistro;
@property (weak, nonatomic) IBOutlet UITextField *userUITextField;
@property (weak, nonatomic) IBOutlet UITextField *passwdUITextFielf;

@property (nonatomic)BOOL habilitado;
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
    NSLog(@"%@", datos[keyUser]);
    NSLog(@"%@", datos[keyPass]);
    if(![datos[keyPass] isEqual:@""] && ![datos[keyUser] isEqual:@""]){
        NSLog(@"Redirigir a Registrarse.");
    }
}

- (IBAction)passwdEditing:(id)sender {
    self.verificarDatos;
    if([self.passwdUITextFielf.text isEqual:@""]){
        return;
    }else if(_habilitado  && ![self.userUITextField.text isEqual:@""]){
        self.validarDatos;
    }
}

- (void)validarDatos{
    NSDictionary *datos = [self.plistRegistro readPlist];
    
    if(
       [datos[keyUser] isEqual:self.userUITextField.text] &&
       [datos[keyPass] isEqual:self.passwdUITextFielf.text]
    ){
        NSLog(@"Redirigir a Lista de materiales.");
    }
}

@end
