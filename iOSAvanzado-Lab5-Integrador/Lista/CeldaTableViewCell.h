//
//  CeldaTableViewCell.h
//  iOSAvanzado-Lab5-Integrador
//
//  Created by Samuel Vasilovski on 8/12/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CeldaTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *descripcionUILabel;
@property (weak, nonatomic) IBOutlet UILabel *cantidadUILabel;

@end

NS_ASSUME_NONNULL_END
