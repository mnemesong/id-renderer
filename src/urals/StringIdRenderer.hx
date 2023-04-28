package urals;

class StringIdRenderer implements IdRendererInterface<String> 
{
    private var pref: String;

    public function new(pref: String = "") {
        IdMatchHelper.assertIdMatch(pref);
        this.pref = pref;
    }

	public function renderId(id:String): String {
		IdMatchHelper.assertIdMatch(pref + id);
        return pref + id;
	}

	public function parseId(id:String): String {
		return IdMatchHelper.removePrefix(id, pref);
	}

}