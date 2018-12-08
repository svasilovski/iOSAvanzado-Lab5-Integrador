//
//  RegistroViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 25/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "RegistroViewController.h"
#import "RegistroData/RegistroPlist.h"

static NSString *const keyUser = @"user";
static NSString *const keyPass = @"passwd";
static NSString *const keyMail = @"email";
static NSString *const keyImg = @"image";

@interface RegistroViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photoUIImageView;
@property (weak, nonatomic) IBOutlet UITextField *userUITextField;
@property (weak, nonatomic) IBOutlet UITextField *emailUITextField;
@property (weak, nonatomic) IBOutlet UITextField *passwdUITextField;

@property(nonatomic) RegistroPlist *plistRegistro;

@end

@implementation RegistroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.plistRegistro=[RegistroPlist new];
    [self.plistRegistro setFilePath:@"Registro"];
    self.gestureImage;
}
#pragma mark - Acciones de imagenes
-(void) gestureImage{
    self.photoUIImageView.userInteractionEnabled=YES;
    UITapGestureRecognizer *tapGestureAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    tapGestureAction.numberOfTapsRequired = 1;
    [self.photoUIImageView addGestureRecognizer:tapGestureAction];
}

-(void) tapGesture:(id)sender{
    // Accion para agregar la imagen
    NSLog(@"%@", sender);
}
#pragma mark - guardar datos
- (IBAction)signUpTapped:(id)sender {
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithCapacity:4];
    [data setObject:self.userUITextField.text forKey:keyUser];
    [data setObject:self.passwdUITextField.text forKey:keyPass];
    [data setObject:self.emailUITextField.text forKey:keyMail];
    [data setObject:@"" forKey:keyImg];
    
    [self.plistRegistro updatePlistDictionary:data];
    
    [self.userUITextField setText:@""];
    [self.passwdUITextField setText:@""];
    [self.emailUITextField setText:@""];
    [self.photoUIImageView setImage:nil];
    
    // redirijo al login
    [self.navigationController popViewControllerAnimated:YES];
}


@end
