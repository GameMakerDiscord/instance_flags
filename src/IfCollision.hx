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
class IfCollision {
	#if !iflags_legacy
	
	static function collision_point_flags(
		x:Float, y:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("collision_point_list")(x, y, obj, prec, notme, instList, ordered));
	}
	
	static function collision_point_flags_all(
		x:Float, y:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):IfRet {
		return findAll(flags, value, not, out, raw("collision_point_list")(x, y, obj, prec, notme, instList, ordered));
	}
	
	static function collision_circle_flags(
		x:Float, y:Float, rad:Float, obj:IfCtx,prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("collision_circle_list")(x, y, rad, obj, prec, notme, instList, ordered));
	}
	
	static function collision_circle_flags_all(
		x:Float, y:Float, rad:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findAll(flags, value, not, out, raw("collision_circle_list")(x, y, rad, obj, prec, notme, instList, ordered));
	}
	
	static function collision_rectangle_flags(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("collision_rectangle_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	static function collision_rectangle_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findAll(flags, value, not, out, raw("collision_rectangle_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	static function collision_line_flags(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("collision_line_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	static function collision_line_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findAll(flags, value, not, out, raw("collision_line_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	static function collision_ellipse_flags(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool
	):Instance {
		return findOne(flags, value, not, raw("collision_ellipse_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	static function collision_ellipse_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags, not:Bool, ?out:IfList
	):Dynamic {
		return findAll(flags, value, not, out, raw("collision_ellipse_list")(x1, y1, x2, y2, obj, prec, notme, instList, ordered));
	}
	
	#else
	//{ point
	static function collision_point_flags(
		x:Float, y:Float, obj:IfCtx, prec:Bool, notme:Bool,
		flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("collision_point")(x, y, obj, prec, notme);
		});
	}
	
	static function collision_point_flags_all(
		x:Float, y:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("collision_point")(x, y, obj, prec, notme);
		}, out);
	}
	//}
	
	//{ circle
	static function collision_circle_flags(
		x:Float, y:Float, rad:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("collision_circle")(x, y, rad, obj, prec, notme);
		});
	}
	
	static function collision_circle_flags_all(
		x:Float, y:Float, rad:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("collision_circle")(x, y, rad, obj, prec, notme);
		}, out);
	}
	//}
	
	//{ rectangle
	static function collision_rectangle_flags(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("collision_rectangle")(x1, y1, x2, y2, obj, prec, notme);
		});
	}
	
	static function collision_rectangle_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("collision_rectangle")(x1, y1, x2, y2, obj, prec, notme);
		}, out);
	}
	//}
	
	//{ line
	static function collision_line_flags(
		x1:Float, y1:Float, x2:Float, y2:Float,
		obj:IfCtx, prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("collision_line")(x1, y1, x2, y2, obj, prec, notme);
		});
	}
	
	static function collision_line_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("collision_line")(x1, y1, x2, y2, obj, prec, notme);
		}, out);
	}
	//}
	
	//{ ellipse
	static function collision_ellipse_flags(
		x1:Float, y1:Float, x2:Float, y2:Float,
		obj:IfCtx, prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags
	):Instance {
		return findOne(flags, value, function() {
			return raw("collision_ellipse")(x1, y1, x2, y2, obj, prec, notme);
		});
	}
	
	static function collision_ellipse_flags_all(
		x1:Float, y1:Float, x2:Float, y2:Float, obj:IfCtx,
		prec:Bool, notme:Bool, flags:IfFlags, value:IfFlags, ?out:IfList
	):Dynamic {
		return findAll(flags, value, function() {
			return raw("collision_ellipse")(x1, y1, x2, y2, obj, prec, notme);
		}, out);
	}
	//}
	#end
}
