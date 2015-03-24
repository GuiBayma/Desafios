//
//  EditViewController.h
//  ListaApps
//
//  Created by Guilherme Bayma on 2/27/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppsData.h"

@interface EditViewController : UIViewController

@property NSMutableArray *conteudo;
@property (weak, nonatomic) IBOutlet UITextField *nomeApp;
@property (weak, nonatomic) IBOutlet UITextField *categoriaApp;
@property (weak, nonatomic) IBOutlet UITextField *descricaoApp;
@property (weak, nonatomic) IBOutlet UIImageView *imagemApp;

@end