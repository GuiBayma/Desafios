//
//  ListaAppTableViewCell.h
//  ListaApps
//
//  Created by Isaías Lima on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListaAppTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageApp;

@property (weak, nonatomic) IBOutlet UILabel *nomeApp;
@property (weak, nonatomic) IBOutlet UILabel *categoriaApp;

@end
