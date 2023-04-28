package urals;

class IntIdRenderer implements IdRendererInterface<Int> 
{
    private var pref: String;

    public function new(pref: String = "") {
        this.pref = pref;
    }

	public function renderId(id:Int): Null<String> {
		return pref + Std.string(id);
	}

	public function parseId(id:String): Null<Int> {
        if(id.indexOf(pref) != 0) return null;
		return Std.parseInt(id.substr(pref.length));
	}
}