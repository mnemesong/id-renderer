# urals-id-renderer


## Description
Tools for render diff types of ids to htmlIdString.
All packaged tools implements IdRendererInterface.


## Requirements
Package tested for Haxe >= 4.0.
The functionality or it missing of the package for lesser versions has not been tested.


## Example of usage
```haxe
...
import urals.IntIdRenderer;

var renderer = new IntIdRenderer("pref_");
assert(renderer.renderId(12) == "pref_12");
assert(renderer.parseId("pref_12") == 12);
```

## General Interface
```haxe
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
```


## Classes
- `IntIdRenderer(pref: String)` - render and parse Int id with prefix
- `StringIdRenderer(pref: String)` - render and parse String id with prefix


## IdMatchHelper
```haxe
//Helper for validate htmlIds and prefixes in them.
class IdMatchHelper 
{
    public static function isIdMatch(s: String): Bool {...}

    public static function assertIdMatch(s: String): Void {...}

    public static function isContainsPrefix(s: String, pref: String): Bool {...}

    public static function assertContainsPrefix(s: String, pref: String): Void {...}

    public static function removePrefix(s: String, pref: String): String {...}
}
```

## Author
Anatoly Starodubtsev
Tostar74@mail.ru