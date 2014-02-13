//
//  LOOLProfile.m
//  LOOL
//
//  Created by Danilo Lira de Lima on 13/02/14.
//  Copyright (c) 2014 danilo. All rights reserved.
//

#import "LOOLProfile.h"

@implementation LOOLProfile

@synthesize nome,senha,Guerreiro1,Guerreiro2;

-(void) persistProfile: (LOOLProfile*) myPlofile{
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    // saving an name
    [prefs setObject:myPlofile forKey:@"MYPROFILE"];
    
    // This is suggested to synch prefs, but is not needed (I didn't put it in my tut)
    [prefs synchronize];
    

}
-(LOOLProfile*) recoverProfile{
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    // getting an NSString
    LOOLProfile *myProfile = [prefs objectForKey:@"MYPROFILE"];
    
    return myProfile;
}



@end
