package urals;

import haxe.Exception;

class IntIdRenderer implements IdRendererInterface<Int> 
{
    private var pref: String;

    public function new(pref: String = "") {
		IdMatchHelper.assertIdMatch(pref);
        this.pref = pref;
    }

	/**
        Translate some kind of id into html-id-string
        @throws Exception on not-biective-translatable string
    **/
	public function renderId(id:Int): String {
		return pref + Std.string(id);
	}

	/**
        Try to parse translated html-id-string back
        @throws Exception on parsing error
    **/
	public function parseId(id:String): Int {
		return Std.parseInt(IdMatchHelper.removePrefix(id, pref));
	}
}