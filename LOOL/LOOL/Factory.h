//
//  Factory.h
//  LeagueOfObjectOriented
//
//  Created by ADRIANA YURI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"



@interface Factory : NSObject

- (Arma*)retornarArma :(int)a deRaca:(int) r;
    




@end
