package urals;

class IntIdRenderer implements IdRendererInterface<Int> 
{
    private var pref: String;

    public function new(pref: String = "") {
        this.pref = pref;
    }

	/**
        Translate some kind of id into html-id-string
    **/
	public function renderId(id:Int): Null<String> {
		return pref + Std.string(id);
	}

	/**
        Try to parse translated html-id-string back
    **/
	public function parseId(id:String): Null<Int> {
        if(id.indexOf(pref) != 0) return null;
		return Std.parseInt(id.substr(pref.length));
	}
}