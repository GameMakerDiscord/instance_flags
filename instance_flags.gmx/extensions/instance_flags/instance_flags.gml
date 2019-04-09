#define instance_flags_init
// Generated at 2019-04-08 17:16:20 (403ms) for v1.4.1804+
// instance_flags:
globalvar g_instance_flags_ordered; g_instance_flags_ordered = false;
globalvar g_instance_flags_inst_list; g_instance_flags_inst_list = ds_list_create();
globalvar g_instance_flags_copy_list; g_instance_flags_copy_list = ds_list_create();
globalvar g_instance_flags_sort_list; g_instance_flags_sort_list = ds_priority_create();

//{ 

#define collision_point_flags
/// collision_point_flags(x, y, obj, prec, notme, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_prec = argument[3], l_notme = argument[4], l_flags = argument[5], l_value = argument[6], l_not = argument[7];
var l_num = collision_point_list(l_x, l_y, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define collision_point_flags_all
/// collision_point_flags_all(x, y, obj, prec, notme, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_prec = argument[3], l_notme = argument[4], l_flags = argument[5], l_value = argument[6], l_not = argument[7], l_out;
if (argument_count > 8) l_out = argument[8]; else l_out = undefined;
var l_out1 = l_out;
var l_num = collision_point_list(l_x, l_y, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

#define collision_circle_flags
/// collision_circle_flags(x, y, rad, obj, prec, notme, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_rad = argument[2], l_obj = argument[3], l_prec = argument[4], l_notme = argument[5], l_flags = argument[6], l_value = argument[7], l_not = argument[8];
var l_num = collision_circle_list(l_x, l_y, l_rad, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define collision_circle_flags_all
/// collision_circle_flags_all(x, y, rad, obj, prec, notme, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_rad = argument[2], l_obj = argument[3], l_prec = argument[4], l_notme = argument[5], l_flags = argument[6], l_value = argument[7], l_not = argument[8], l_out;
if (argument_count > 9) l_out = argument[9]; else l_out = undefined;
var l_out1 = l_out;
var l_num = collision_circle_list(l_x, l_y, l_rad, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

#define collision_rectangle_flags
/// collision_rectangle_flags(x, y, x, y, obj, prec, notme, flags, value, not)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9];
var l_num = collision_rectangle_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define collision_rectangle_flags_all
/// collision_rectangle_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9], l_out;
if (argument_count > 10) l_out = argument[10]; else l_out = undefined;
var l_out1 = l_out;
var l_num = collision_rectangle_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

#define collision_line_flags
/// collision_line_flags(x, y, x, y, obj, prec, notme, flags, value, not)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9];
var l_num = collision_line_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define collision_line_flags_all
/// collision_line_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9], l_out;
if (argument_count > 10) l_out = argument[10]; else l_out = undefined;
var l_out1 = l_out;
var l_num = collision_line_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

#define collision_ellipse_flags
/// collision_ellipse_flags(x, y, x, y, obj, prec, notme, flags, value, not)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9];
var l_num = collision_ellipse_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define collision_ellipse_flags_all
/// collision_ellipse_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
var l_x1 = argument[0], l_y1 = argument[1], l_x2 = argument[2], l_y2 = argument[3], l_obj = argument[4], l_prec = argument[5], l_notme = argument[6], l_flags = argument[7], l_value = argument[8], l_not = argument[9], l_out;
if (argument_count > 10) l_out = argument[10]; else l_out = undefined;
var l_out1 = l_out;
var l_num = collision_ellipse_list(l_x1, l_y1, l_x2, l_y2, l_obj, l_prec, l_notme, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

//}

//{ 

#define instance_nearest_flags
/// instance_nearest_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_check = (l_value & l_flags);
var l_best_inst = noone;
var l_best_dist = 4294967295.;
with (l_obj) if ((l_not) ? (self.iflags & l_flags) != l_check : (self.iflags & l_flags) == l_check) {
	var l_dist = point_distance(l_x, l_y, self.x, self.y);
	if (l_dist < l_best_dist) {
		l_best_dist = l_dist;
		l_best_inst = self;
	}
}
return l_best_inst;

#define instance_furthest_flags
/// instance_furthest_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_check = (l_value & l_flags);
var l_best_inst = noone;
var l_best_dist = -1.;
with (l_obj) if ((l_not) ? (self.iflags & l_flags) != l_check : (self.iflags & l_flags) == l_check) {
	var l_dist = point_distance(l_x, l_y, self.x, self.y);
	if (l_dist > l_best_dist) {
		l_best_dist = l_dist;
		l_best_inst = self;
	}
}
return l_best_inst;

#define instance_nearest_flags_num
/// instance_nearest_flags_num(x, y, obj, num, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_num = argument[3], l_flags = argument[4], l_value = argument[5], l_not = argument[6], l_out;
if (argument_count > 7) l_out = argument[7]; else l_out = undefined;
var l_check = (l_value & l_flags);
var l_pq = g_instance_flags_sort_list;
var l_found = 0;
with (l_obj) if ((l_not) ? (self.iflags & l_flags) != l_check : (self.iflags & l_flags) == l_check) {
	if (l_found < l_num) ++l_found; else ds_priority_delete_max(l_pq);
	ds_priority_add(l_pq, self, point_distance(l_x, l_y, self.x, self.y));
}
var l_i = 0;
if (l_out != undefined) {
	while (l_i < l_found) {
		ds_list_add(l_out, ds_priority_delete_min(l_pq));
		++l_i;
	}
	return l_found;
} else {
	for (var l_arr = array_create(l_found, 0); l_i < l_found; ++l_i) {
		l_arr[@l_i] = ds_priority_delete_min(l_pq);
	}
	return l_arr;
}

#define instance_furthest_flags_num
/// instance_furthest_flags_num(x, y, obj, num, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_num = argument[3], l_flags = argument[4], l_value = argument[5], l_not = argument[6], l_out;
if (argument_count > 7) l_out = argument[7]; else l_out = undefined;
var l_check = (l_value & l_flags);
var l_pq = g_instance_flags_sort_list;
var l_found = 0;
with (l_obj) if ((l_not) ? (self.iflags & l_flags) != l_check : (self.iflags & l_flags) == l_check) {
	if (l_found < l_num) ++l_found; else ds_priority_delete_min(l_pq);
	ds_priority_add(l_pq, self, point_distance(l_x, l_y, self.x, self.y));
}
var l_i = 0;
if (l_out != undefined) {
	while (l_i < l_found) {
		ds_list_add(l_out, ds_priority_delete_max(l_pq));
		++l_i;
	}
	return l_found;
} else {
	for (var l_arr = array_create(l_found, 0); l_i < l_found; ++l_i) {
		l_arr[@l_i] = ds_priority_delete_max(l_pq);
	}
	return l_arr;
}

//}

//{ 

#define instance_number_flags
/// instance_number_flags(obj, flags, value)
var l_obj = argument[0], l_flags = argument[1], l_value = argument[2];
l_value &= l_flags;
var l_found = 0;
with (l_obj) if ((self.iflags & l_flags) == l_value) ++l_found;
return l_found;

#define instance_find_flags
/// instance_find_flags(obj, index, flags, value)
var l_obj = argument[0], l_index = argument[1], l_flags = argument[2], l_value = argument[3];
l_value &= l_flags;
with (l_obj) if ((self.iflags & l_flags) == l_value && --l_index < 0) return self;
return noone;

#define instance_find_flags_all
/// instance_find_flags_all(obj, flags, value, ?out)
var l_obj = argument[0], l_flags = argument[1], l_value = argument[2], l_out;
if (argument_count > 3) l_out = argument[3]; else l_out = undefined;
l_value &= l_flags;
var l_alloc;
if (l_out == undefined) {
	l_out = g_instance_flags_inst_list;
	l_alloc = true;
} else l_alloc = false;
var l_found = 0;
with (l_obj) if ((self.iflags & l_flags) == l_value) {
	ds_list_add(l_out, self);
	++l_found;
}
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	while (--l_found >= 0) {
		l_arr[@l_found] = l_out[|l_found];
	}
	ds_list_clear(l_out);
	return l_arr;
} else return l_found;

//}

//{ 

#define place_meeting_flags
/// place_meeting_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_num = instance_place_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst != noone;

#define instance_place_flags
/// instance_place_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_num = instance_place_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define instance_place_flags_all
/// instance_place_flags_all(x, y, obj, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5], l_out;
if (argument_count > 6) l_out = argument[6]; else l_out = undefined;
var l_out1 = l_out;
var l_num = instance_place_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

//}

//{ 

#define position_meeting_flags
/// position_meeting_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_num = instance_position_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst != noone;

#define instance_position_flags
/// instance_position_flags(x, y, obj, flags, value, not)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5];
var l_num = instance_position_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l__g1 = l_num; l_i < l__g1; l_i++) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		l_inst = l_q;
		break;
	}
}
ds_list_clear(l_tmp);
return l_inst;

#define instance_position_flags_all
/// instance_position_flags_all(x, y, obj, flags, value, not, ?out)
var l_x = argument[0], l_y = argument[1], l_obj = argument[2], l_flags = argument[3], l_value = argument[4], l_not = argument[5], l_out;
if (argument_count > 6) l_out = argument[6]; else l_out = undefined;
var l_out1 = l_out;
var l_num = instance_position_list(l_x, l_y, l_obj, g_instance_flags_inst_list, g_instance_flags_ordered);
var l_alloc;
if (l_out1 == undefined) {
	l_alloc = true;
	l_out1 = g_instance_flags_copy_list;
} else l_alloc = false;
var l_tmp = g_instance_flags_inst_list;
var l_check = (l_value & l_flags);
var l_inst = noone;
var l_i = 0;
for (var l_found = 0; l_i < l_num; ++l_i) {
	var l_q = l_tmp[|l_i];
	if ((l_not) ? (l_q.iflags & l_flags) != l_check : (l_q.iflags & l_flags) == l_check) {
		ds_list_add(l_out1, l_q);
		++l_found;
	}
}
ds_list_clear(l_tmp);
if (l_alloc) {
	var l_arr = array_create(l_found, 0);
	for (l_i = 0; l_i < l_found; ++l_i) {
		l_arr[l_i] = l_out1[|l_i];
	}
	ds_list_clear(l_out1);
	return l_arr;
} else return l_found;

//}
