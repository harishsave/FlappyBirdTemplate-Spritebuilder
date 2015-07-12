#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    Character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

@end
