//
//  CeldaTableViewCell.m
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 9/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "CeldaTableViewCell.h"

@interface CeldaTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *DescripcionUILabel;
@property (weak, nonatomic) IBOutlet UILabel *CantidadUILabel;
@end

@implementation CeldaTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setSelected:(BOOL)selected{
    self.DescripcionUILabel.text=_descripcion;
    self.CantidadUILabel.text=_cantidad;
}

-(void)prepareForReuse{
    [super prepareForReuse];
    self.DescripcionUILabel.text = @"";
    self.CantidadUILabel.text = @"";
}

@end
