package urals;

interface IdRendererInterface<Id>
{
    /**
        Translate some kind of id into html-id-string
    **/
    public function renderId(id: Id): Null<String>;

    /**
        Try to parse translated html-id-string back
    **/
    public function parseId(id: String): Null<Id>;
}