//
//  LeagueOfOrientedObject.h
//  LeagueOfObjectOriented
//
//  Created by Vinicius Miana on 12/8/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface LeagueOfOrientedObject : NSObject {
    
}
@property Jogador* player1;
@property Jogador* player2;

-(void)jogar;

-(Boolean)verificarVencedor;

-(Jogador*)vencedor;


@end
