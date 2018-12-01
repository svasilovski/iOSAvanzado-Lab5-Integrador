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

- (IBAction)signUpTapped:(id)sender {
    [self.plistRegistro writePlist:keyUser :self.userUITextField.text];
    [self.plistRegistro writePlist:keyPass :self.passwdUITextField.text];
    [self.plistRegistro writePlist:keyMail :self.emailUITextField.text];
    //[self.plistRegistro writePlist:keyImg :self.photoUIImageView.text];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
