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
class IfPosition {
	#if !iflags_legacy
	
	static function position_meeting_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Bool {
		return findOne(flags, value, not, raw("instance_position_list")(x, y, obj, instList, ordered)) != noone;
	}
	
	static function instance_position_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("instance_position_list")(x, y, obj, instList, ordered));
	}
	
	static function instance_position_flags_all(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):IfRet {
		return findAll(flags, value, not, out, raw("instance_position_list")(x, y, obj, instList, ordered));
	}
	
	#else
	
	static function position_meeting_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags
	):Bool {
		return findOne(flags, value, function() {
			return raw("instance_position")(x, y, obj);
		}) != noone;
	}
	
	static function instance_position_flags(
		x:Float, y:Float, obj:Object, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value,function() {
			return raw("instance_position")(x, y, obj);
		});
	}
	
	static function instance_position_flags_all(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		value &= flags;
		return findAll(flags, value, function() {
			return raw("instance_position")(x, y, obj);
		}, out);
	}
	
	#end
}
