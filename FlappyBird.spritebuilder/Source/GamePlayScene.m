#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // this will be run every frame.
    // delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down

    // put update code here
    timeSinceObstacle += delta; // delta is approx 1/60th of a second
    
    //check to see if two seconds have passed
    if(timeSinceObstacle > 2.0f)
    {
        //Add a new obstacle
        [self addObstacle];
        
        //Then reset the timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    
    [character flap];
}

@end
