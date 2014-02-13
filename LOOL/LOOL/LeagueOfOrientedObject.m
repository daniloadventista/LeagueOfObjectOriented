//
//  LeagueOfOrientedObject.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "LeagueOfOrientedObject.h"
#import "Jogador.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"
#import <stdio.h>
#import <time.h>
#import "Factory.h"

@implementation LeagueOfOrientedObject

//singleton
static LeagueOfOrientedObject* _sharedLeagueOfOrientedObject = nil;
+(LeagueOfOrientedObject*)sharedLeagueOfOrientedObject{
    @synchronized([LeagueOfOrientedObject class])
    {
        if (! _sharedLeagueOfOrientedObject)
            _sharedLeagueOfOrientedObject = [[self alloc] init];
        
        return _sharedLeagueOfOrientedObject;
    }
    
    return nil;
}

//nao tem init
-(LeagueOfOrientedObject *) init {
    self = [super init];
    return self;
}

-(BOOL) verificarVencedor {
    return ([player1 vida] <= 0 || [player2 vida] <= 0);
}

-(Jogador *) vencedor {
    if ([player1 vida] <= 0){
        return player2;
    }
    else return player1;
}


-(void) jogar {
    srand(time(NULL));
    Arena* arena = [[Arena alloc] init];
    NSLog(@"Arena: ");
    [arena imprimirmapa];
    
    int primeiro = rand() % 2 + 1;
    while (![self verificarVencedor]) {
        if (primeiro == 1) {
            double a = [player1 ataque:arena];
            NSLog(@"Ataque do player1 = %f\n",a);
            [player2 sofrerAtaque:a];
            NSLog(@"Vida do player2 = %f\n",[player2 vida]);
            double b = [player2 ataque:arena];
            NSLog(@"Ataque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"Vida do player1 = %f\n",[player1 vida]);
            
        }
        else {
            double b = [player2 ataque:arena];
            NSLog(@"Ataque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"Vida do player1 = %f\n",[player1 vida]);
            double a = [player1 ataque:arena];
            NSLog(@"Ataque do player1 = %f\n",a);
            [player2 sofrerAtaque:a];
            NSLog(@"Vida do player2 = %f\n",[player2 vida]);
            
        }
    }
    NSLog(@"Vencedor = %@\n",[[self vencedor] nome]);
}

-(void) main {
    char s1[100] = {0}, s2[100] = {0};
    NSString *nome1, *nome2;
    int raca1, raca2, forcaEscudo1, forcaEscudo2, arma1, arma2;
    Arma *principal1, *principal2, *secundaria1, *secundaria2;
    Factory * f = [[Factory alloc] init];
    NSLog(@"\tJogador 1\n");
    NSLog(@"Nome: ");
    scanf("%s",s1);
    nome1 = [NSString stringWithUTF8String:s1];
    NSLog(@"Raca: ");
    scanf("%d",&raca1);
    NSLog(@"Forca do escudo: ");
    scanf("%d",&forcaEscudo1);
    NSLog(@"Arco e flecha = 1 | Espada = 2 || Machado = 3 || Magia = 4\n");
    NSLog(@"Arma: ");
    scanf("%d",&arma1);
    principal1 = [f retornarArma:arma1 deRaca:raca1];
    NSLog(@"Arma secundaria: ");
    scanf("%d",&arma1);
    secundaria1 = [f retornarArma:arma1 deRaca:raca1];
    player1 = [[Jogador alloc] initWithNome:nome1 andRaca:raca1 andArmaPrimaria:principal1 andArmaSecundaria:secundaria1];
    NSLog(@"\tJogador 2\n");
    NSLog(@"Nome: ");
    scanf("%s",s2);
    nome2 = [NSString stringWithUTF8String:s2];
    NSLog(@"Raca: ");
    scanf("%d",&raca2);
    NSLog(@"Forca do escudo: ");
    scanf("%d",&forcaEscudo2);
    NSLog(@"Arco e flecha = 1 | Espada = 2 || Machado = 3 || Magia = 4\n");
    NSLog(@"Arma: ");
    scanf("%d",&arma2);
    principal2 = [f retornarArma:arma2 deRaca:raca2];
    NSLog(@"Arma secundaria: ");
    scanf("%d",&arma2);
    secundaria2 = [f retornarArma:arma2 deRaca:raca2];
    player2 = [[Jogador alloc] initWithNome:nome2 andRaca:raca2 andArmaPrimaria:principal2 andArmaSecundaria:secundaria2];
    [self jogar];
}

@end
