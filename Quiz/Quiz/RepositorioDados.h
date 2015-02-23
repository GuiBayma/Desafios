//
//  RepositorioDados.h
//  Quiz
//
//  Created by Guilherme Bayma on 2/23/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RepositorioDados : NSObject

@property NSMutableArray *Perguntas;
@property NSMutableArray *Respostas;
@property NSMutableArray *Imagens;
@property NSInteger indice;

-(instancetype) init;
-(NSString *) proximaPergunta;
-(NSString *) proximaResposta;
-(NSString *) proximaImagem;

@end