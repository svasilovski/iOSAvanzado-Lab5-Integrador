//
//  RegistroViewController.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 25/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "RegistroViewController.h"

@interface RegistroViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photoUIImageView;
@property (weak, nonatomic) IBOutlet UITextField *userUITextField;
@property (weak, nonatomic) IBOutlet UITextField *emailUITextField;
@property (weak, nonatomic) IBOutlet UITextField *passwdUITextField;

@end

@implementation RegistroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
