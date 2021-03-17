package;

import gml.Instance;
import gml.NativeArray;
import gml.NativeScope.*;
import IfTools.*;

/**
 * ...
 * @author YellowAfterlife
 */
@:keep @:native("")
class IfIndexed {
	@:doc static function instance_number_flags(obj:IfCtx, flags:IfFlags, value:IfFlags):Int {
		value &= flags;
		var found = 0;
		for (q in with(obj)) {
			if (flagsOf(q) & flags == value) found++;
		}
		return found;
	}
	
	@:doc static function instance_find_flags(obj:IfCtx, index:Int, flags:IfFlags, value:IfFlags):Instance {
		value &= flags;
		for (q in with(obj)) {
			if (flagsOf(q) & flags == value && --index < 0) return q;
		}
		return noone;
	}
	
	@:doc static function instance_find_flags_all(
		obj:IfCtx, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		value &= flags;
		var alloc:Bool;
		if (out == null) {
			out = instList;
			alloc = true;
		} else alloc = false;
		var found = 0;
		for (q in with(obj)) {
			if (flagsOf(q) & flags == value) {
				out.add(q);
				found++;
			}
		}
		if (alloc) {
			var arr = NativeArray.createEmpty(found);
			while (--found >= 0) arr[found] = out[found];
			out.clear();
			return arr;
		} else return found;
	}
}
