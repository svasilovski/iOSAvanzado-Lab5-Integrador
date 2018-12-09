//
//  DetalleTableViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 8/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "DetalleTableViewController.h"
#import "../CeldaTableViewCell.h"
#import "JsonController.h"

@interface DetalleTableViewController ()
@property NSArray *dataDictionary;
@property(nonatomic) JsonController *jsonRegistro;
@end

@implementation DetalleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.jsonRegistro=[JsonController new];
    [self.jsonRegistro setFilePath:@"data"];
    self.wirteJson;
}

-(void)wirteJson{
    self.dataDictionary = (NSArray *)self.jsonRegistro.readJSON;
}

#pragma mark - Tapped action

- (IBAction)PerfilTapped:(id)sender {
    [self performSegueWithIdentifier:@"goToPerfil" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goToPerfil"]) {
        // Preparo el perfil para saber si es vista o edicion.
        
        /*DetalleTableViewController *dtvc = (DetalleTableViewController *)segue.destinationViewController;*/
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataDictionary count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CeldaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"producto cell" forIndexPath:indexPath];
    NSDictionary *datacell = [self.dataDictionary objectAtIndex:indexPath.row];
    
    cell.descripcion = [datacell objectForKey:@"desc"];
    cell.cantidad = [datacell objectForKey:@"cant"];
    // Editar para cargar la imagen.
    return cell;
}

@end
