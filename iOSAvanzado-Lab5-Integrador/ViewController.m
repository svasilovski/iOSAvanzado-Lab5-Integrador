//
//  ViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 24/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "RegistroData/RegistroPlist.h"
#import "DetalleTableViewController.h"

static NSString *const keyUser = @"user";
static NSString *const keyPass = @"passwd";
static NSString *const logedPass = @"userLogged";

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
    if([datos[keyPass] isEqual:@""] && [datos[keyUser] isEqual:@""]){
        [self performSegueWithIdentifier:@"goToLogin" sender:self];
    }
    else if([datos[logedPass] isEqual:@"YES"]){
        [self performSegueWithIdentifier:@"goToList" sender:self];
    }
}

- (IBAction)loginTapped:(id)sender {
    if(![self.passwdUITextFielf.text isEqual:@""] && ![self.userUITextField.text isEqual:@""]){
        self.validarDatos;
    }
}

- (void)validarDatos{
    NSDictionary *datos = [self.plistRegistro readPlist];
    
    if(
       [datos[keyUser] isEqual:self.userUITextField.text] &&
       [datos[keyPass] isEqual:self.passwdUITextFielf.text]
    ){
        [self.plistRegistro writePlist:logedPass :@"YES"];
        [self performSegueWithIdentifier:@"goToList" sender:self];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goToList"]) {
        DetalleTableViewController *dtvc = (DetalleTableViewController *)segue.destinationViewController;
    }
}

@end
