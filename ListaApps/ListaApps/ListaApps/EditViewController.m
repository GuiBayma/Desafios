//
//  EditViewController.m
//  ListaApps
//
//  Created by Guilherme Bayma on 2/27/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController{
    NSNumber *indice;
    AppsData *dados;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    dados = [AppsData instance];
    NSString *nome = _conteudo[0];
    NSString *categoria = _conteudo[1];
    NSString *descricao = _conteudo[3];
    [_nomeApp setPlaceholder:nome];
    [_categoriaApp setPlaceholder:categoria];
    [_descricaoApp setPlaceholder:descricao];
    [_imagemApp setImage:[UIImage imageNamed:_conteudo[2]]];
    indice = _conteudo[4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)finaliza:(UIButton *)sender {
    [dados.nomeApps replaceObjectAtIndex:[indice integerValue] withObject:[_nomeApp text]];
    [dados.categoriaApps replaceObjectAtIndex:[indice integerValue] withObject:[_categoriaApp text]];
    [dados.descricaoApps replaceObjectAtIndex:[indice integerValue] withObject:[_descricaoApp text]];
    
//    [_nomeApp resignFirstResponder];
//    [_categoriaApp resignFirstResponder];
//    [_descricaoApp resignFirstResponder];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [_nomeApp resignFirstResponder];
    [_categoriaApp resignFirstResponder];
    [_descricaoApp resignFirstResponder];
}

#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
}
*/

@end
