package;

import sneaker.assertion.Asserter.*;

class StringIdRendererTest
{
    public static function run() {
        var strRenderer = new urals.StringIdRenderer("sd");
        assert(strRenderer.renderId("dsa809-_dsa9") == "sddsa809-_dsa9");
        assert(strRenderer.parseId("sddsa809-_dsa9") == "dsa809-_dsa9");
    }    
}