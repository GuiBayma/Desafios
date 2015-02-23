//
//  RepositorioDados.m
//  Quiz
//
//  Created by Guilherme Bayma on 2/23/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

#import "RepositorioDados.h"

@implementation RepositorioDados

-(instancetype)init {
    self = [super init];
    if (self) {
        _Perguntas = [[NSMutableArray alloc] init];
        _Respostas = [[NSMutableArray alloc] init];
        _Imagens = [[NSMutableArray alloc] init];
        
        [_Perguntas addObject:@"Quanto é 7 + 7?"];
        [_Perguntas addObject:@"Em qual ano estamos?"];
        [_Perguntas addObject:@"Qual a capital da Ucrania?"];
        
        [_Respostas addObject:@"14"];
        [_Respostas addObject:@"2015"];
        [_Respostas addObject:@"Kiev"];
        
        [_Imagens addObject:@"14.jpg"];
        [_Imagens addObject:@"2015.png"];
        [_Imagens addObject:@"kiev.jpg"];
        
        _indice = 0;
    }
    return self;
}

-(NSString *) proximaPergunta {
    NSString *pergunta;
    pergunta = [_Perguntas objectAtIndex:_indice];
    _indice = (_indice+1)%3;
    return pergunta;
}

-(NSString *) proximaResposta {
    NSInteger i = (_indice+2)%3;
    return [_Respostas objectAtIndex:i];
}

-(NSString *)proximaImagem {
    NSInteger i = (_indice+2)%3;
    return [_Imagens objectAtIndex:i];
}

@end