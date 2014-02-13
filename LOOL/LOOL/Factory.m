//
//  Factory.m
//  LeagueOfObjectOriented
//
//  Created by ADRIANA YURI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Factory.h"
#import "Arma.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"
#import <time.h>


@implementation Factory

- (Arma*)retornarArma :(int)a deRaca:(int) r{
    srand(time(NULL));
    float f = rand() % 41 + 60;
    if (a == 1) {
        return [[ArcoEFlecha alloc] initWithQuantidadeFlechas:10 andPrecisaoArma:f];
    }
    else if (a == 2){
        return [[Espada alloc] initWithForcaMaxima:10 andPrecisaoAtaque:f];
    }
    else if (a == 3){
        return [[Machado alloc] initWithForcaMaxima:10 andPrecisaoArma:f];
    }
    else return [[Magia alloc] initWithPrecisaoArma:f andRaca:r];
}





@end
