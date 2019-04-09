package;

import gml.Instance;
import gml.NativeArray;
import gml.NativeScope.*;
import SfTools.raw;
import IfTools.*;

/**
 * ...
 * @author YellowAfterlife
 */
@:keep @:native("") @:doc
class IfPlace {
	#if !iflags_legacy
	
	static function place_meeting_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Bool {
		return findOne(flags, value, not, raw("instance_place_list")(x, y, obj, instList, ordered)) != noone;
	}
	static function instance_place_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("instance_place_list")(x, y, obj, instList, ordered));
	}
	static function instance_place_flags_all(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):IfRet {
		return findAll(flags, value, not, out, raw("instance_place_list")(x, y, obj, instList, ordered));
	}
	
	#else
	
	static function place_meeting_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags
	):Bool {
		return findOne(flags, value, function() {
			return raw("instance_place")(x, y, obj);
		}) != noone;
	}
	
	static function instance_place_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("instance_place")(x, y, obj);
		});
	}
	
	static function instance_place_flags_all(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("instance_place")(x, y, obj);
		}, out);
	}
	
	#end
}
