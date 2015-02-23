//
//  ViewController.h
//  Quiz
//
//  Created by Guilherme Bayma on 2/23/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RepositorioDados.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *pergunta;
@property (weak, nonatomic) IBOutlet UILabel *resposta;
@property (weak, nonatomic) IBOutlet UIImageView *imagemResposta;

- (IBAction)botaoPergunta:(id)sender;
- (IBAction)botaoResposta:(id)sender;

@end