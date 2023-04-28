package urals;

import haxe.Exception;

class IdParsingError extends Exception
{
    public static function create(pref: String, str: String): IdParsingError {
        return new IdParsingError("Id parsing error: prefix " 
            + pref + " had not be found in string " + str);
    }
}