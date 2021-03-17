// Generated at 2021-03-17 13:33:29 (306ms) for v2.3.1+

function collision_point_flags(l_x,l_y,l_obj,l_prec,l_notme,l_flags,l_value,l_not){
	/// collision_point_flags(x, y, obj, prec, notme, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	var l_num=collision_point_list(l_x,l_y,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function collision_point_flags_all(l_x,l_y,l_obj,l_prec,l_notme,l_flags,l_value,l_not,l_out){
	/// collision_point_flags_all(x, y, obj, prec, notme, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[8]);
	var l_out1=l_out;
	var l_num=collision_point_list(l_x,l_y,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function collision_circle_flags(l_x,l_y,l_rad,l_obj,l_prec,l_notme,l_flags,l_value,l_not){
	/// collision_circle_flags(x, y, rad, obj, prec, notme, flags, value, not)
	/// @param x
	/// @param y
	/// @param rad
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	var l_num=collision_circle_list(l_x,l_y,l_rad,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function collision_circle_flags_all(l_x,l_y,l_rad,l_obj,l_prec,l_notme,l_flags,l_value,l_not,l_out){
	/// collision_circle_flags_all(x, y, rad, obj, prec, notme, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param rad
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[9]);
	var l_out1=l_out;
	var l_num=collision_circle_list(l_x,l_y,l_rad,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function collision_rectangle_flags(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not){
	/// collision_rectangle_flags(x, y, x, y, obj, prec, notme, flags, value, not)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	var l_num=collision_rectangle_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function collision_rectangle_flags_all(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not,l_out){
	/// collision_rectangle_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[10]);
	var l_out1=l_out;
	var l_num=collision_rectangle_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function collision_line_flags(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not){
	/// collision_line_flags(x, y, x, y, obj, prec, notme, flags, value, not)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	var l_num=collision_line_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function collision_line_flags_all(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not,l_out){
	/// collision_line_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[10]);
	var l_out1=l_out;
	var l_num=collision_line_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function collision_ellipse_flags(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not){
	/// collision_ellipse_flags(x, y, x, y, obj, prec, notme, flags, value, not)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	var l_num=collision_ellipse_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function collision_ellipse_flags_all(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,l_flags,l_value,l_not,l_out){
	/// collision_ellipse_flags_all(x, y, x, y, obj, prec, notme, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param x
	/// @param y
	/// @param obj
	/// @param prec
	/// @param notme
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[10]);
	var l_out1=l_out;
	var l_num=collision_ellipse_list(l_x1,l_y1,l_x2,l_y2,l_obj,l_prec,l_notme,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function instance_nearest_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// instance_nearest_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_check=(l_value&l_flags);
	var l_best_inst=noone;
	var l_best_dist=4294967295.;
	with (l_obj) if((l_not?(self.iflags&l_flags)!=l_check:(self.iflags&l_flags)==l_check)){
		var l_dist=point_distance(l_x,l_y,self.x,self.y);
		if(l_dist<l_best_dist){
			l_best_dist=l_dist;
			l_best_inst=self;
		}
	}
	return l_best_inst;
}

function instance_furthest_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// instance_furthest_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_check=(l_value&l_flags);
	var l_best_inst=noone;
	var l_best_dist=-1.;
	with (l_obj) if((l_not?(self.iflags&l_flags)!=l_check:(self.iflags&l_flags)==l_check)){
		var l_dist=point_distance(l_x,l_y,self.x,self.y);
		if(l_dist>l_best_dist){
			l_best_dist=l_dist;
			l_best_inst=self;
		}
	}
	return l_best_inst;
}

function instance_nearest_flags_num(l_x,l_y,l_obj,l_num,l_flags,l_value,l_not,l_out){
	/// instance_nearest_flags_num(x, y, obj, num, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param obj
	/// @param num
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[7]);
	var l_check=(l_value&l_flags);
	var l_pq=instance_flags_sort_list;
	var l_found=0;
	with (l_obj) if((l_not?(self.iflags&l_flags)!=l_check:(self.iflags&l_flags)==l_check)){
		if(l_found<l_num)l_found++; else ds_priority_delete_max(l_pq);
		ds_priority_add(l_pq,self,point_distance(l_x,l_y,self.x,self.y));
	}
	var l_i=0;
	if(l_out!=undefined){
		while(l_i<l_found){
			ds_list_add(l_out,ds_priority_delete_min(l_pq));
			l_i++;
		}
		return l_found;
	} else {
		var l_arr=array_create(l_found);
		while(l_i<l_found){
			l_arr[@l_i]=ds_priority_delete_min(l_pq);
			l_i++;
		}
		return l_arr;
	}
}

function instance_furthest_flags_num(l_x,l_y,l_obj,l_num,l_flags,l_value,l_not,l_out){
	/// instance_furthest_flags_num(x, y, obj, num, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param obj
	/// @param num
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[7]);
	var l_check=(l_value&l_flags);
	var l_pq=instance_flags_sort_list;
	var l_found=0;
	with (l_obj) if((l_not?(self.iflags&l_flags)!=l_check:(self.iflags&l_flags)==l_check)){
		if(l_found<l_num)l_found++; else ds_priority_delete_min(l_pq);
		ds_priority_add(l_pq,self,point_distance(l_x,l_y,self.x,self.y));
	}
	var l_i=0;
	if(l_out!=undefined){
		while(l_i<l_found){
			ds_list_add(l_out,ds_priority_delete_max(l_pq));
			l_i++;
		}
		return l_found;
	} else {
		var l_arr=array_create(l_found);
		while(l_i<l_found){
			l_arr[@l_i]=ds_priority_delete_max(l_pq);
			l_i++;
		}
		return l_arr;
	}
}

function instance_number_flags(l_obj,l_flags,l_value){
	/// instance_number_flags(obj, flags, value)
	/// @param obj
	/// @param flags
	/// @param value
	l_value&=l_flags;
	var l_found=0;
	with (l_obj) if((self.iflags&l_flags)==l_value)l_found++;
	return l_found;
}

function instance_find_flags(l_obj,l_index,l_flags,l_value){
	/// instance_find_flags(obj, index, flags, value)
	/// @param obj
	/// @param index
	/// @param flags
	/// @param value
	l_value&=l_flags;
	with (l_obj) if((self.iflags&l_flags)==l_value&&--l_index<0)return self;
	return noone;
}

function instance_find_flags_all(l_obj,l_flags,l_value,l_out){
	/// instance_find_flags_all(obj, flags, value, ?out)
	/// @param obj
	/// @param flags
	/// @param value
	/// @param [out]
	if(false)show_debug_message(argument[3]);
	l_value&=l_flags;
	var l_alloc;
	if(l_out==undefined){
		l_out=instance_flags_inst_list;
		l_alloc=true;
	} else l_alloc=false;
	var l_found=0;
	with (l_obj) if((self.iflags&l_flags)==l_value){
		ds_list_add(l_out,self);
		l_found++;
	}
	if(l_alloc){
		var l_arr=array_create(l_found);
		while(--l_found>=0){
			l_arr[@l_found]=l_out[|l_found];
		}
		ds_list_clear(l_out);
		return l_arr;
	} else return l_found;
}

function place_meeting_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// place_meeting_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_num=instance_place_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst!=noone;
}

function instance_place_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// instance_place_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_num=instance_place_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function instance_place_flags_all(l_x,l_y,l_obj,l_flags,l_value,l_not,l_out){
	/// instance_place_flags_all(x, y, obj, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[6]);
	var l_out1=l_out;
	var l_num=instance_place_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

function position_meeting_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// position_meeting_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_num=instance_position_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst!=noone;
}

function instance_position_flags(l_x,l_y,l_obj,l_flags,l_value,l_not){
	/// instance_position_flags(x, y, obj, flags, value, not)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	var l_num=instance_position_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_inst=noone;
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			l_inst=l_q;
			break;
		}
	}
	ds_list_clear(l_tmp);
	return l_inst;
}

function instance_position_flags_all(l_x,l_y,l_obj,l_flags,l_value,l_not,l_out){
	/// instance_position_flags_all(x, y, obj, flags, value, not, ?out)
	/// @param x
	/// @param y
	/// @param obj
	/// @param flags
	/// @param value
	/// @param not
	/// @param [out]
	if(false)show_debug_message(argument[6]);
	var l_out1=l_out;
	var l_num=instance_position_list(l_x,l_y,l_obj,instance_flags_inst_list,instance_flags_ordered);
	var l_alloc;
	if(l_out1==undefined){
		l_alloc=true;
		l_out1=instance_flags_copy_list;
	} else l_alloc=false;
	var l_tmp=instance_flags_inst_list;
	var l_check=(l_value&l_flags);
	var l_i=0;
	var l_found=0;
	while(l_i<l_num){
		var l_q=l_tmp[|l_i];
		if((l_not?(l_q.iflags&l_flags)!=l_check:(l_q.iflags&l_flags)==l_check)){
			ds_list_add(l_out1,l_q);
			l_found++;
		}
		l_i++;
	}
	ds_list_clear(l_tmp);
	if(l_alloc){
		var l_arr=array_create(l_found);
		for(l_i=0;l_i<l_found;l_i++){
			l_arr[l_i] = l_out1[|l_i];
		}
		ds_list_clear(l_out1);
		return l_arr;
	} else return l_found;
}

globalvar instance_flags_ordered;instance_flags_ordered=false;
globalvar instance_flags_inst_list;instance_flags_inst_list=ds_list_create();
globalvar instance_flags_copy_list;instance_flags_copy_list=ds_list_create();
globalvar instance_flags_sort_list;instance_flags_sort_list=ds_priority_create();

