package;

class IntIdRenderer implements IdRendererInterface<Int> 
{
    private var pref: String;

    public function new(pref: String) {
        this.pref = pref;
    }

	public function renderId(id:Int):String {
		return pref + Std.string(id);
	}

	public function parseId(id:String):Int {
		return Std.parseInt(id.substr(pref.length));
	}
}