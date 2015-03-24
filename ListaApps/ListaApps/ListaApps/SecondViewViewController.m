//
//  SecondViewViewController.m
//  ListaApps
//
//  Created by Gustavo Tiago on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "SecondViewViewController.h"

@interface SecondViewViewController ()

@end

@implementation SecondViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_nome setText:_appsDetail[0]];
    [_categoria setText:_appsDetail[1]];
    [_imagem setImage:[UIImage imageNamed:_appsDetail[2]]];
    [_descricao setText:_appsDetail[3]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"editApp"])
    {
        EditViewController *detailViewController = [segue destinationViewController];
        detailViewController.conteudo = [[NSMutableArray alloc] initWithArray:_appsDetail];
    }
}



@end