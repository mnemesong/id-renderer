package urals;

class StringIdRenderer implements IdRendererInterface<String> 
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
	public function renderId(id:String): String {
		IdMatchHelper.assertIdMatch(pref + id);
        return pref + id;
	}

    /**
        Try to parse translated html-id-string back
        @throws Exception on parsing error
    **/
	public function parseId(id:String): String {
		return IdMatchHelper.removePrefix(id, pref);
	}

}