package urals;

import haxe.Exception;

class IdMatchHelper 
{
    public static function isIdMatch(s: String): Bool {
        return ~/[a-zA-Z_\-]+[a-zA-Z_0-9\-]*/
            .match(s);
    }

    public static function assertIdMatch(s: String): Void {
        if(IdMatchHelper.isIdMatch(s) == false) 
            throw new Exception("String " + s + " is not may be valid htmlId");
    }

    public static function isContainsPrefix(s: String, pref: String): Bool {
        return (s.indexOf(pref) == 0);
    }

    public static function assertContainsPrefix(s: String, pref: String): Void {
        if(IdMatchHelper.isContainsPrefix(s, pref) == false) 
            throw new Exception("String " + s + " is not contains prefix " + pref);
    }

    public static function removePrefix(s: String, pref: String): String {
        IdMatchHelper.assertContainsPrefix(s, pref);
        return s.substr(pref.length);
    }
}