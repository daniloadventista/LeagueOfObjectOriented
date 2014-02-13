//
//  Arma.h
//  LeagueOfObjectOriented
//
//  Created by Vinicius Miana on 12/8/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;

@interface Arma : NSObject {
    
}
@property (nonatomic) float precisaoDoAtaque;

-(double)calcularForcaAtaque:(Jogador*)jogador;


@end
