package;

import sneaker.assertion.Asserter.*;

class StringKebabToSnakeIdRendererTest 
{
    public static function run() {
        var renderer = new StringKebabToSnakeIdRenderer("d-a_");
        assert(renderer.renderId("asd-f12-3as") == "d-a_asd_f12_3as");
        assert(renderer.parseId("d-a_Dasd_Da") == "Dasd-Da");
    }    
}