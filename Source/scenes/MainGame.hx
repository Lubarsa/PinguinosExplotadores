package scenes;

import glue.display.GImage;
import glue.scene.GScene;
import entities.Pinguino;
import glue.math.GVector2D;
import glue.input.GInput;

class MainGame extends GScene
{
    var penguin:Pinguino;

    var penguins = new Array<Pinguino>();

    override public function preload()
    {
        loadSpritesheet("p_idle","assets/penguin_idle.png");
        loadSpritesheet("p_walk","assets/penguin_walk.png");

    }

    override public function init()
    {
        /*penguin = new Pinguino();
        add(penguin);*/

        for (j in 0...5)
        {
            for (i in 0...5)
            {
                penguins[i] = new Pinguino();
                penguins[i].position.x = 80 * i;
                penguins[i].position.y = 120 * j;
                add(penguins[i]);
            }
        }

    }

    override public function update()
    {

    }
}