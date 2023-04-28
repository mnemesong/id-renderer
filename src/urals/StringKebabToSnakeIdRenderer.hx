package urals;

using Lambda;

class StringKebabToSnakeIdRenderer implements IdRendererInterface<String> 
{
	private var pref: String;

    public function new(pref: String = "") {
        this.pref = pref;
    }

	public function renderId(id: String): Null<String> {
		return pref + id.split("")
			.map(c -> (c == "-") ? '_' : c)
			.join("");
	}

	public function parseId(id: String): Null<String> {
		if(id.indexOf(pref) != 0) return null;
		return id.substr(pref.length)
			.split("")
			.map(c -> (c == "_") ? '-' : c)
			.join("");
	}
}