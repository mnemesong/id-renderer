package urals;

interface IdRendererInterface<Id>
{
    /**
        Translate some kind of id into html-id-string
        @throws Exception on not-biective-translatable string
    **/
    public function renderId(id: Id): String;

    /**
        Try to parse translated html-id-string back
        @throws Exception on parsing error
    **/
    public function parseId(id: String): Id;
}