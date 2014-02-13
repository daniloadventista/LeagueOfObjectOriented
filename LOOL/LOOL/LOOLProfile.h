//
//  LOOLProfile.h
//  LOOL
//
//  Created by Danilo Lira de Lima on 13/02/14.
//  Copyright (c) 2014 danilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface LOOLProfile : NSObject
{
    NSString *nome;
    NSString *senha;
    Jogador *Guerreiro1;
    Jogador *Guerreiro2;
    
}

@property NSString *nome;
@property NSString *senha;
@property Jogador *Guerreiro1;
@property Jogador *Guerreiro2;



-(void) persistProfile: (LOOLProfile*) myPlofile;
-(LOOLProfile*) recoverProfile;

@end
