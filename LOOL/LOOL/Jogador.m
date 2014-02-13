//
//  Jogador.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Jogador.h"
#import "Arena.h"



@implementation Jogador

static int const ELFO = 0;
static int const HUMANO = 1;
static int const ORC = 2;
static int const ANAO = 3;

@synthesize nome;
@synthesize raca;
@synthesize vida;
@synthesize forcaEscudo;
@synthesize armaPrimaria;
@synthesize armaSecundaria;


+(int)HUMANO{
    return HUMANO;
}

+(int)ELFO {
    return ELFO;
}

+(int)ORC {
    return ORC;
}

+(int)ANAO {
    return ANAO;
}

-(Jogador *) initWithNome:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as {
    self = [super init];
    if (self) {
        nome = n;
        raca = r;
        vida = 100;
        armaPrimaria = ap;
        armaSecundaria = as;
    }
    return self;
}

-(double) ataque:(Arena *)a {
    double bonus, atk;
    switch (raca) {
        case ORC:
            bonus = 10;
            break;
        case ANAO:
            bonus = 5;
            break;
        default:
            bonus = 0;
            break;
    }
    atk = [armaPrimaria calcularForcaAtaque:raca];
    if (atk == 0) {
        atk = [armaSecundaria calcularForcaAtaque:raca];
    }
    
    return atk*[a calcularBonusArena:self];
}

-(void) sofrerAtaque:(double) forca{
    double bonus;
    //NSDictionary *dicArma = @{
    switch (raca) {
        case 0:
            bonus = 10;
            break;
        case 1:
            bonus = 15;
            break;
        case 2:
            bonus = 5;
            break;
        case 3:
            bonus = 15;
            break;
    }
    vida -= forca + bonus;
}

@end
