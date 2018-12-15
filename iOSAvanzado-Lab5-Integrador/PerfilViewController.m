//
//  PerfilViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 15/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "PerfilViewController.h"

@interface PerfilViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageUIImageView;
@property (weak, nonatomic) IBOutlet UITextField *userUITexField;
@property (weak, nonatomic) IBOutlet UITextField *emailUITextField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *editUIBarButtonItem;
@property (weak, nonatomic) IBOutlet UIButton *salirUIButtom;

@property (nonatomic)Boolean *modoEdicion;
@end

@implementation PerfilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modoEdicion=false;
    self.configurarControles;
}

-(void)configurarControles{
    [self.imageUIImageView setUserInteractionEnabled:self.modoEdicion];
    [self.userUITexField setEnabled:self.modoEdicion];
    [self.emailUITextField setEnabled:self.modoEdicion];
    
    if(!self.modoEdicion){
        self.editUIBarButtonItem.title=@"Editar";
        self.salirUIButtom.titleLabel.text=@"Salir";
        [self.salirUIButtom setBackgroundColor:UIColor.redColor];
    }
    else{
        self.editUIBarButtonItem.title=@"Cancelar";
        self.salirUIButtom.titleLabel.text=@"Guardar";
        [self.salirUIButtom setBackgroundColor:UIColor.greenColor];
    }
}

#pragma mark - Button Acion
- (IBAction)alternarModoTapped:(id)sender {
    self.modoEdicion=!self.modoEdicion;
    self.configurarControles;
}

- (IBAction)SalirTapped:(id)sender {
    if(self.modoEdicion){
        // Guardar
    }
    else{
        // Salir
        [self.navigationController popViewControllerAnimated:YES];
    }
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
