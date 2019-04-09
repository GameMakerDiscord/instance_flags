package;

import gml.ds.*;
import gml.assets.*;
import gml.Instance;
import gml.NativeScope.*;
import gml.NativeArray;
import SfTools.raw;

import IfIndexed;
import IfDistance;
import IfPlace;
import IfPosition;
import IfCollision;

/**
 * ...
 * @author YellowAfterlife
 */
@:keep @:native("instance_flags")
class IfTools {
	
	@:doc public static var ordered:Bool = false;
	
	public static var instList:ArrayList<Instance> = new ArrayList();
	
	#if !legacy
	public static var copyList:ArrayList<Instance> = new ArrayList();
	#else
	public static var maskList:ArrayList<Sprite> = new ArrayList();
	public static var hideList:ArrayList<Instance> = new ArrayList();
	#end
	
	public static var sortList:PriorityQueue<Instance> = new PriorityQueue();
	
	@:extern public static inline function flagsOf(q:Instance):IfFlags {
		return untyped q.iflags;
	}
	@:extern public static inline function matches(q:Instance, flags:IfFlags, value:IfFlags, not:Bool):Bool {
		return not
			? (flagsOf(q) & flags != value)
			: (flagsOf(q) & flags == value);
	}
	
	#if !iflags_legacy
	@:extern public static inline function findOne(flags:IfFlags, value:IfFlags, not:Bool, num:Int):Instance {
		var tmp = instList;
		var check = value & flags;
		var inst:Instance = noone;
		for (i in 0 ... num) {
			var q = tmp[i];
			if (matches(q, flags, check, not)) {
				inst = q;
				break;
			}
		}
		tmp.clear();
		return inst;
	}
	@:extern public static inline function findAll(flags:IfFlags, value:IfFlags, not:Bool, out:IfList, num:Int):IfRet {
		var alloc:Bool;
		if (out == null) {
			alloc = true;
			out = copyList;
		} else alloc = false;
		//
		var tmp = instList;
		var check = value & flags;
		var inst:Instance = noone;
		var i = 0, found = 0;
		while (i < num) {
			var q = tmp[i];
			if (matches(q, flags, check, not)) {
				out.add(q);
				found++;
			}
			i++;
		}
		//
		tmp.clear();
		if (alloc) {
			var arr = NativeArray.create(found);
			i = 0; while (i < found) {
				NativeArray.copyset(arr, i, out[i]);
				i++;
			}
			out.clear();
			return arr;
		} else return found;
	}
	#else
	@:extern static inline function findOne(
		flags:IfFlags, value:IfFlags, fn:Void->Instance
	):Instance {
		var check = value & flags;
		var hide_list = hideList;
		var mask_list = maskList;
		var misses = 0;
		var inst:Instance;
		do {
			inst = fn();
			if (inst == noone) break;
			if (flagsOf(inst) & flags != check) {
				hide_list.add(inst);
				mask_list.add(inst.mask_index);
				inst.mask_index = raw("mask_none");
				misses += 1;
			} else break;
		} while (true);
		while (--misses >= 0) {
			hide_list[misses].mask_index = mask_list[misses];
		}
		hide_list.clear();
		mask_list.clear();
		return inst;
	}
	@:extern static inline function findAll(
		flags:IfFlags, value:IfFlags, fn:Void->Instance, out:IfList
	):Dynamic {
		var check = value & flags;
		var hide_list = hideList;
		var mask_list = maskList;
		var alloc, inst_list;
		if (out == null) {
			inst_list = instList;
			alloc = true;
		} else {
			inst_list = out;
			alloc = false;
		}
		var misses = 0;
		var found = 0;
		do {
			var inst = fn();
			if (inst == noone) break;
			if (flagsOf(inst) & flags != check) {
				hide_list.add(inst);
				mask_list.add(inst.mask_index);
				inst.mask_index = raw("mask_none");
				misses += 1;
			} else {
				inst_list.add(inst);
				found += 1;
			}
		} while (true);
		//
		while (--misses >= 0) {
			hide_list[misses].mask_index = mask_list[misses];
		}
		hide_list.clear();
		mask_list.clear();
		//
		if (alloc) {
			var arr = NativeArray.create(found);
			while (--found >= 0) arr[found] = inst_list[found];
			inst_list.clear();
			return cast arr;
		} else return found;
	}
	#end
	
	public static inline function main() {
		
	}
}
