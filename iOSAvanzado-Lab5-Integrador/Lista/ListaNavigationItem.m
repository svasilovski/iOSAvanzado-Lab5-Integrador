//
//  ListaNavigationItem.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 9/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ListaNavigationItem.h"

@implementation ListaNavigationItem

- (IBAction)PerfilTapped:(id)sender {
    //[self performSegueWithIdentifier:@"goToPerfil" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goToPerfil"]) {
        // Preparo el perfil para saber si es vista o edicion.
        
        /*DetalleTableViewController *dtvc = (DetalleTableViewController *)segue.destinationViewController;*/
    }
}

@end
