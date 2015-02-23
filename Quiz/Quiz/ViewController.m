//
//  ViewController.m
//  Quiz
//
//  Created by Guilherme Bayma on 2/23/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
    RepositorioDados *rd;
    bool inicio;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    rd = [[RepositorioDados alloc] init];
    inicio = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)botaoPergunta:(id)sender {
    [_pergunta setText:[rd proximaPergunta]];
    [_resposta setText:@"<<<<>>>>"];
    [_imagemResposta setImage:nil];
    inicio = YES;
}

- (IBAction)botaoResposta:(id)sender {
    if (inicio) {
        [_resposta setText:[rd proximaResposta] ];
        [_imagemResposta setImage:[UIImage imageNamed:[rd proximaImagem]]];
    }
}
@end