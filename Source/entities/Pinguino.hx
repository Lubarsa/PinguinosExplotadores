package entities;

import glue.input.GKey;
import glue.input.GInput;
import glue.Glue;
import glue.utils.GTime;
import glue.display.GSprite;
import glue.math.GVector2D;


class Pinguino extends GSprite
{
    var _velocity:GVector2D = new GVector2D(0,0);
    var WALK_SPEED:GVector2D = new GVector2D(200,0);



    override public function init()
    {
        addAnimation("idle","p_idle",60);
        addAnimation("walk","p_walk",60);
        play("idle");

        setPosition(Glue.width/2,Glue.height/2);
        setAnchor(0.5,1);

        GInput.bindKeys("right",[GKey.D,GKey.RIGHT]);
        GInput.bindKeys("left",[GKey.A,GKey.LEFT]);


    }

    override public function update()
    {
        if(GInput.isKeyPressed("right"))
        {
            _velocity.x = WALK_SPEED.x;
            setScaleX(1);
            play("walk");
        }
        if(GInput.isKeyPressed("left"))
        {
            _velocity.x = -WALK_SPEED.x;
            setScaleX(-1);
            play("walk");
        }
        if(!GInput.isKeyPressed("right") && !GInput.isKeyPressed("left"))
        {
            _velocity.x = 0;
            play("idle");
        }

        position += _velocity * GTime.deltaTime;

    }

}