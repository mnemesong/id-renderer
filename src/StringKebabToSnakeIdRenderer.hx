package;

using Lambda;

class StringKebabToSnakeIdRenderer implements IdRendererInterface<String> 
{
	private var pref: String;

    public function new(pref: String = "") {
        this.pref = pref;
    }

	public function renderId(id: String): String {
		return pref + id.split("")
			.map(c -> (c == "-") ? '_' : c)
			.join("");
	}

	public function parseId(id: String): String {
		if(id.indexOf(pref) != 0) throw IdParsingError.create(pref, id);
		return id.substr(pref.length)
			.split("")
			.map(c -> (c == "_") ? '-' : c)
			.join("");
	}
}