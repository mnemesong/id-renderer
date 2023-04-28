package;

import sneaker.assertion.Asserter.*;

class StringKebabToCamelIdRendererTest
{
    public static function run() {
        var renderer = new StringKebabToCamelIdRenderer("d-a_");
        assert(renderer.renderId("asd-f12-3as") == "d-a_asdF123as");
        assert(renderer.parseId("d-a_DasdDa") == "-dasd-da");
    }
}