package;

interface IdRendererInterface<Id>
{
    public function renderId(id: Id): String;

    public function parseId(id: String): Id;
}