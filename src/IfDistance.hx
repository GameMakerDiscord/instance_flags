package;

import gml.Instance;
import gml.Mathf;
import gml.NativeArray;
import gml.NativeScope.*;
import IfTools.*;

/**
 * ...
 * @author YellowAfterlife
 */
@:keep @:native("") @:doc
class IfDistance {
	
	static function instance_nearest_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		var check = value & flags;
		var best_inst = noone;
		var best_dist = 4294967295.;
		for (q in with(obj)) {
			if (matches(q, flags, check, not)) {
				var dist = Mathf.dist2d(x, y, q.x, q.y);
				if (dist < best_dist) {
					best_dist = dist;
					best_inst = q;
				}
			}
		}
		return best_inst;
	}
	
	static function instance_furthest_flags(
		x:Float, y:Float, obj:IfCtx, flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		var check = value & flags;
		var best_inst = noone;
		var best_dist = -1.;
		for (q in with(obj)) {
			if (matches(q, flags, check, not)) {
				var dist = Mathf.dist2d(x, y, q.x, q.y);
				if (dist > best_dist) {
					best_dist = dist;
					best_inst = q;
				}
			}
		}
		return best_inst;
	}
	
	@:extern static inline function findDistNum(
		x:Float, y:Float, obj:IfCtx, num:Int,
		flags:IfFlags, value:IfFlags, not:Bool, near:Bool, out:IfList
	):Dynamic {
		var check = value & flags;
		var pq = sortList;
		var found = 0;
		for (q in with(obj)) {
			if (matches(q, flags, check, not)) {
				if (found < num) {
					found += 1;
				} else if (near) {
					pq.deleteMax();
				} else pq.deleteMin();
				pq.add(q, gml.Mathf.dist2d(x, y, q.x, q.y));
			}
		}
		//
		var i:Int = 0;
		if (out != null) {
			while (i < found) {
				if (near) {
					out.add(pq.deleteMin());
				} else out.add(pq.deleteMax());
				i += 1;
			}
			return found;
		} else {
			var arr = NativeArray.create(found);
			while (i < found) {
				if (near) {
					arr[i] = pq.deleteMin();
				} else arr[i] = pq.deleteMax();
				i += 1;
			}
			return cast arr;
		}
	}
	
	static function instance_nearest_flags_num(
		x:Float, y:Float, obj:IfCtx, num:Int,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findDistNum(x, y, obj, num, flags, value, not, true, out);
	}
	
	static function instance_furthest_flags_num(
		x:Float, y:Float, obj:IfCtx, num:Int,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findDistNum(x, y, obj, num, flags, value, not, false, out);
	}
	
}
