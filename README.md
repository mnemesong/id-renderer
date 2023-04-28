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


## API
```haxe
 /**
    Function helps to produce UralsWidgetWebFactory, and safe pair lines of code
**/
inline function createUralsWidgeWebFactory<M>(
    templateFactory: UralsTemplateWebFactory<M>,
    cssFactory: UralsCssWebFactory
): UralsWidgetWebFactory<M> {...}

/**
    Function prefixing entity id to id for html-tag
**/
@:pure
inline function prefixIdByClassName(classId: String, id: String): String {...}

/**
    Function rollbacks result of previous function
**/
function essenceIdFromPrefixedId(htmlId: String, className: String): String {...}
```


## Types
```haxe
/**
    Template function thats produces Html by Model (M) and it's id
**/
typedef UralsTemplateWebFunc<M> = (m: M, id: String) -> String;

/**
    Initialized unit of Widget, thats will be used for rendering, 
    and bundling styles of page
**/
typedef UralsWidgetWeb<M> = {
    template: UralsTemplateWebFunc<M>,
    css: String,
    classId: String,
};

/**
    Function, thats produce unit of widget uses its unique class identifier
**/
typedef UralsWidgetWebFactory<M> = (classId: String) -> UralsWidgetWeb<M>;

/**
    Function, thats produces tepmplate function uses unique class identifier
    of widget
**/
typedef UralsTemplateWebFactory<M> = (classId: String) -> UralsTemplateWebFunc<M>;

/**
    Function, thats produces css-style uses unique class identifier
    of widget
**/
typedef UralsCssWebFactory = (classId: String) -> String;
```

## Author
Anatoly Starodubtsev
Tostar74@mail.ru