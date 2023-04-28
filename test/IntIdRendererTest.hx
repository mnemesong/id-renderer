package;

import sneaker.assertion.Asserter.*;

class IntIdRendererTest
{
    public static function main() 
    {
        var renderer = new IntIdRenderer("pref_");
        assert(renderer.renderId(12) == "pref_12");
        assert(renderer.parseId("pref_12") == 12);
    }
}