//
//  jailbreak.h
// spongebob
//
//  Created by Ben Sparkes on 16/02/2018.
//  Copyright © 2018 Ben Sparkes. All rights reserved.
//

#ifndef jailbreak_h
#define jailbreak_h

BOOL great_success;

int makeShitHappen(id view);
int runV0rtex(void);
int patchContainermanagerd(void);
int remountRootFs(void);
int extracspongebobata(void);
void setUpSymLinks(void);
int extractBootstrap(int *exitCode);
int defecateAmfi(void);
int launchDropbear(void);
void setUpSubstitute(void);
int startJailbreakd(void);
int loadLaunchDaemons(void);
void enableHiddenApps(void);

#endif /* jailbreak_h */
