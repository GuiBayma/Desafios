//
//  AppsData.m
//  ListaApps
//
//  Created by Gustavo Tiago on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "AppsData.h"

@implementation AppsData
@synthesize nomeApps, categoriaApps, imagemApps, descricaoApps;

static AppsData * instance = nil;

+(AppsData *) instance{
    
    if (instance == nil){
        instance = [[AppsData alloc] init];
    }
    return instance;
    
}
-(id)init {
    if (self) {
        nomeApps = [[NSMutableArray alloc]init];
        categoriaApps = [[NSMutableArray alloc]init];
        imagemApps = [[NSMutableArray alloc]init];
        descricaoApps = [[NSMutableArray alloc]init];
        
        [nomeApps addObject:@"Waze"];
        [nomeApps addObject:@"Google maps"];
        [nomeApps addObject:@"Facebook"];
        [nomeApps addObject:@"Whatsapp"];
        [nomeApps addObject:@"eBay"];
        [nomeApps addObject:@"Ingresso"];
        
        [categoriaApps addObject:@"Navegação"];
        [categoriaApps addObject:@"Navegação"];
        [categoriaApps addObject:@"Social"];
        [categoriaApps addObject:@"Social"];
        [categoriaApps addObject:@"Negócios"];
        [categoriaApps addObject:@"Negócios"];
        
        [imagemApps addObject:@"Waze"];
        [imagemApps addObject:@"Google_maps"];
        [imagemApps addObject:@"Facebook"];
        [imagemApps addObject:@"Whatsapp"];
        [imagemApps addObject:@"eBay"];
        [imagemApps addObject:@"Ingresso"];
        
        [descricaoApps addObject:@"Waze é o maior aplicativo de navegação e trânsito do mundo baseado em uma comunidade."];
        [descricaoApps addObject:@"Utilize o mapa para pesquisar, explorar e encontrar o seu caminho em qualquer parte do mundo."];
        [descricaoApps addObject:@"Rede Social quem permite você interagir com seus amigos e familiares da melhor forma possível"];
        [descricaoApps addObject:@"O WhatsApp Messenger é um mensageiro para smartphones disponível para iPhone"];
        [descricaoApps addObject:@"O app eBay no seu iPhone é o seu portal para o maior mercado de compras e vendas do mundo."];
        [descricaoApps addObject:@" A Ingresso.com criou um aplicativo para o iPhone para tornar sua compra de ingressos para cinema e teatro ainda mais fácil."];
    }
    return self;
}
@end
