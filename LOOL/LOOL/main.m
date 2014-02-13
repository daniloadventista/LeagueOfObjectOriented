//
//  main.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeagueOfOrientedObject.h"
#import "Arena.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //LeagueOfOrientedObject *loo = [[LeagueOfOrientedObject alloc] init];
        LeagueOfOrientedObject *loo = [LeagueOfOrientedObject sharedLeagueOfOrientedObject];
        [loo main];
        
    }
    return 0;
}

