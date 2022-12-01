#define ds_ini_create
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_create()

// Creates a new INI structure. The function returns an
// integer as an id that must be used in all other
// functions to access the particular INI structure.

return ds_map_create();
#define ds_ini_destroy
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_destroy(ini)

// Destroys the INI structure, freeing the memory used. Do
// not forget to call this function when you are ready with
// the structure.

ds_ini_clear(argument0);
ds_map_destroy(argument0);
#define ds_ini_clear
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_clear(ini)

// Clears the INI structure with the given id, removing all
// data from it but not destroying it.

var sec;
repeat(ds_map_size(argument0))
{
 sec = ds_map_find_first(argument0);
 ds_map_destroy(ds_map_find_value(argument0, sec));
 ds_map_delete(argument0, sec);
}
#define ds_ini_section_create
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_create(ini,sec)

// Adds a new, empty section called sec to the INI
// structure. Returns whether succesful.

if(ds_map_exists(argument0, argument1) || argument1 == '') return false;
ds_map_add(argument0, argument1, ds_map_create());
return true;
#define ds_ini_section_duplicate
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_duplicate(ini,srcsec,dstsec)

// Creates a section called dstsec containing the same data
// as the section called srcsec, which is in the same,
// given ini structure. dstsec looses its original data if
// it already exists. Returns whether succesful.

return ds_ini_section_copy(argument0, argument1, argument0, argument2);
#define ds_ini_section_copy
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_copy(srcini,srcsec,dstini,dstsec)

// Same as the previous function, except sections can now
// also be copied from one INI structure to another.

if(!ds_map_exists(argument0, argument1) || argument3 == '') return false;
var new;
if(ds_map_exists(argument2, argument3))
 new = ds_map_find_value(argument2, argument3);
else
{
 new = ds_map_create();
 ds_map_add(argument2, argument3, new);
}
ds_map_copy(new, ds_map_find_value(argument0, argument1));
return true;
#define ds_ini_section_rename
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_rename(ini,oldsec,newsec)

// Renames the section called oldsec into newsec. newsec
// looses its original data if it already exists. Returns
// whether succesful.

return ds_ini_section_move(argument0, argument1, argument0, argument2);
#define ds_ini_section_move
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_move(oldini,oldsec,newini,newsec)

// Same as the previous function, except sections can now
// also be moved from one INI structure to another.

if(!ds_map_exists(argument0, argument1) || argument3 == '') return false;
var map;
map = ds_map_find_value(argument0, argument1);
ds_map_delete(argument0, argument1);
if(ds_map_exists(argument2, argument3))
{
 ds_map_destroy(ds_map_find_value(argument2, argument3));
 ds_map_replace(argument2, argument3, map);
}
else ds_map_add(argument2, argument3, map);
return true;
#define ds_ini_section_destroy
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_destroy(ini,sec)

// Removes the section with the given name from the INI
// structure. Returns whether succesful.

if(!ds_map_exists(argument0, argument1)) return false;
ds_map_destroy(ds_map_find_value(argument0, argument1));
ds_map_delete(argument0, argument1);
return true;
#define ds_ini_section_clear
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_clear(ini,sec)

// Clears the section with the given name in the INI
// structure, removing all data from it but not destroying
// it. Returns whether succesful.

if(!ds_map_exists(argument0, argument1)) return false;
ds_map_clear(ds_map_find_value(argument0, argument1));
return true;
#define ds_ini_section_exists
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_exists(ini,sec)

// Returns whether the section exists in the INI structure.

return ds_map_exists(argument0, argument1);
#define ds_ini_section_number
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_number(ini)

// Returns the number of sections that the INI structure
// contains.

return ds_map_size(argument0);
#define ds_ini_section_first
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_first(ini)

// Returns the name of the first section in the INI
// structure, or an empty string if no sections exist.

var res;
res = ds_map_find_first(argument0);
if(is_real(res)) return '';
return res;
#define ds_ini_section_last
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_last(ini)

// Returns the name of the last section in the INI
// structure, or an empty string if no sections exist.

var res;
res = ds_map_find_last(argument0);
if(is_real(res)) return '';
return res;
#define ds_ini_section_previous
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_previous(ini,sec)

// Returns the name of the last section in the INI
// structure before the indicated section, or an empty
// string if no previous section exists or the specified
// section does not exist.

var res;
res = ds_map_find_previous(argument0, argument1);
if(is_real(res)) return '';
return res;
#define ds_ini_section_next
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_section_next(ini,sec)

// Returns the name of the first section in the INI
// structure after the indicated section, or an empty
// string if no next section exists or the specified
// section does not exist.

if(argument1 == '') return '';
var res;
res = ds_map_find_next(argument0, argument1);
if(is_real(res)) return '';
return res;
#define ds_ini_key_write
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_write(ini,sec,key,val)

// Sets key key of section sec to value val. The key is
// created if it does not already exist. Returns whether
// succesful.

if(!ds_map_exists(argument0, argument1) || argument2 == '') return false;
var map;
map = ds_map_find_value(argument0, argument1);
if(ds_map_exists(map, argument2)) ds_map_replace(map, argument2, argument3);
else ds_map_add(map, argument2, argument3);
return true;
#define ds_ini_key_read
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_read(ini,sec,key)

// Returns the current value of key key of section sec, or
// an empty string if the key or section does not exist.

if(!ds_map_exists(argument0, argument1)) return '';
var val;
val = ds_map_find_value(ds_map_find_value(argument0, argument1), argument2);
if(is_real(val)) return '';
return val;
#define ds_ini_key_duplicate
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_duplicate(ini,sec,srckey,dstkey)

// Copies srckey to dstkey in section sec, overwriting
// dstkey if necessary. Returns whether succesful.

return ds_ini_key_copy_ext(argument0, argument1, argument2,
                           argument0, argument1, argument3);
#define ds_ini_key_copy
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_copy(ini,srcsec,srckey,dstsec,dstkey)

// Same as the previous function, except keys can now also
// be copied from one section to another. dstsec must
// already exist.

return ds_ini_key_copy_ext(argument0, argument1, argument2,
                           argument0, argument3, argument4);
#define ds_ini_key_copy_ext
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_copy_ext(srcini,srcsec,srckey,dstini,dstsec,dstkey)

// Same as the previous two functions, except keys can now
// also be copied from one INI structure to another.

if(!ds_map_exists(argument0, argument1)) return false;
var val;
val = ds_map_find_value(ds_map_find_value(argument0, argument1), argument2);
if(is_real(val)) return false;
return ds_ini_key_write(argument3, argument4, argument5, val);
#define ds_ini_key_rename
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_rename(ini,sec,oldkey,newkey)

// Renames oldkey into newkey in section sec, overwriting
// newkey if necessary. Returns whether succesful.

return ds_ini_key_move_ext(argument0, argument1, argument2,
                           argument0, argument1, argument3);
#define ds_ini_key_move
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_move(ini,oldsec,oldkey,newsec,newkey)

// Same as the previous function, except keys can now also
// be moved from one section to another. newsec must
// already exist.

return ds_ini_key_move_ext(argument0, argument1, argument2,
                           argument0, argument3, argument4);
#define ds_ini_key_move_ext
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_move_ext(oldini,oldsec,oldkey,newini,newsec,newkey)

// Same as the previous two functions, except keys can now
// also be moved from one INI structure to another.

if(!ds_map_exists(argument0, argument1)) return false;
var map, val;
map = ds_map_find_value(argument0, argument1);
val = ds_map_find_value(map, argument2);
if(is_real(val)) return false;
if(!ds_ini_key_write(argument3, argument4, argument5, val)) return false;
ds_map_delete(map, argument2);
return true;
#define ds_ini_key_delete
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_delete(ini,sec,key)

// Deletes key key of section sec. Returns whether
// succesful.

if(!ds_map_exists(argument0, argument1)) return false;
var map;
map = ds_map_find_value(argument0, argument1);
if(!ds_map_exists(map, argument2)) return false;
ds_map_delete(map, argument2);
return true;
#define ds_ini_key_exists
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_exists(ini,sec,key)

// Returns whether the key exists in the section.

if(ds_map_exists(argument0, argument1))
 return ds_map_exists(ds_map_find_value(argument0, argument1), argument2);
return false;
#define ds_ini_key_number
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_number(ini,sec)

// Returns the number of key-value pairs that the specified
// section contains, or -1 if the section does not exist.

if(ds_map_exists(argument0, argument1))
 return ds_map_size(ds_map_find_value(argument0, argument1));
return -1;
#define ds_ini_key_first
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_first(ini,sec)

// Returns the name of the first key in the section, or an
// empty string if the section does not exist or is empty.

if(!ds_map_exists(argument0, argument1)) return '';
var res;
res = ds_map_find_first(ds_map_find_value(argument0, argument1));
if(is_real(res)) return '';
return res;
#define ds_ini_key_last
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_last(ini,sec)

// Returns the name of the last key in the section, or an
// empty string if the section does not exist or is empty.

if(!ds_map_exists(argument0, argument1)) return '';
var res;
res = ds_map_find_last(ds_map_find_value(argument0, argument1));
if(is_real(res)) return '';
return res;
#define ds_ini_key_previous
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_previous(ini,sec,key)

// Returns the name of the last key in the section before
// the indicated key, or an empty string if no previous key
// exists or the specified section or key does not exist.

if(!ds_map_exists(argument0, argument1)) return '';
var res;
res = ds_map_find_previous(ds_map_find_value(argument0, argument1), argument2);
if(is_real(res)) return '';
return res;
#define ds_ini_key_next
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_key_next(ini,sec,key)

// Returns the name of the first key in the section after
// the indicated key, or an empty string if no next key
// exists or the specified section or key does not exist.

if(argument2 == '' || !ds_map_exists(argument0, argument1)) return '';
var res;
res = ds_map_find_next(ds_map_find_value(argument0, argument1), argument2);
if(is_real(res)) return '';
return res;
#define ds_ini_save
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_save(ini,fname)

// Exports (a copy of) the INI structure to an INI file
// with filename fname. The file is overwritten if it
// already exists.

var file, sec, map, key;
file = file_text_open_write(argument1);
if(ds_ini_head != '')
{
 file_text_write_string(file, ds_ini_sign_comment);
 file_text_write_string(file, ds_ini_head);
 file_text_writeln(file);
}
for(sec = ds_map_find_first(argument0);
    is_string(sec); sec = ds_map_find_next(argument0, sec))
{
 if(ds_ini_empty_lines) file_text_writeln(file);
 file_text_write_string(file, ds_ini_sign_left);
 file_text_write_string(file, sec);
 file_text_write_string(file, ds_ini_sign_right);
 file_text_writeln(file);
 map = ds_map_find_value(argument0, sec);
 for(key = ds_map_find_first(map);
     is_string(key); key = ds_map_find_next(map, key))
 {
  file_text_write_string(file, key);
  file_text_write_string(file, ds_ini_sign_equal);
  file_text_write_string(file, ds_map_find_value(map, key));
  file_text_writeln(file);
 }
}
file_text_close(file);
#define ds_ini_load
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_load(ini,fname)

// Replaces the INI structure with the INI file with
// filename fname. The file is overwritten if it already
// exists. Returns the number of lines that could not be
// read on success, or -1 on failure.

if(!file_exists(argument1)) return -1;
if((ds_ini_sign_left == '' && ds_ini_sign_right == '')
   || ds_ini_sign_equal == '' || ds_ini_sign_comment == '') return -1;
ds_ini_clear(argument0);
var length_left, length_right, length_equal, length_comment,
    file, errors, neof, sec, line, pos, length, name;
length_left = string_length(ds_ini_sign_left);
length_right = string_length(ds_ini_sign_right);
length_equal = string_length(ds_ini_sign_equal);
length_comment = string_length(ds_ini_sign_comment);
file = file_text_open_read(argument1);
errors = 0;
neof = true;
sec = -1;
while(neof)
{
 neof = !file_text_eof(file);
 line = file_text_read_string(file);
 file_text_readln(file);
 if(line == '') continue;
 if(string_copy(line, 1, length_comment) == ds_ini_sign_comment) continue;
 length = string_length(line);
 pos = string_pos(ds_ini_sign_equal, line);
 if(pos == 0)
 {
  if(string_copy(line, 1, length_left) == ds_ini_sign_left
     && string_copy(line, length - length_right + 1, length_right)
     == ds_ini_sign_right)
  {
   name = string_copy(line, length_left + 1,
                      length - length_left - length_right);
   if(name == '' || ds_map_exists(argument0, name))
   {
    errors += 1;
    sec = -1;
    continue;
   }
   sec = ds_map_create();
   ds_map_add(argument0, name, sec);
  }
  else errors += 1;
  continue;
 }
 if(sec == -1)
 {
  errors += 1;
  continue;
 }
 name = string_copy(line, 1, pos - 1);
 if(name == '' || ds_map_exists(sec, name)) errors += 1;
 else ds_map_add(sec, name, string_copy(line, pos + length_equal,
                                        length - length_equal - pos + 1));
}
file_text_close(file);
return errors;
#define ds_ini_reset_style
// INI Data Structure Extension for Game Maker
// Copyright (C) 2007 Jeroen van der Gun
// Free to use non-commercially, but put my name in the credits.

// ds_ini_reset_style()

// Sets all signs with a special meaning back to their
// default values, unsets the heading comment and enables
// empty lines as section separators.

globalvar ds_ini_sign_left, ds_ini_sign_right, ds_ini_sign_equal,
          ds_ini_sign_comment, ds_ini_head, ds_ini_empty_lines;
ds_ini_sign_left = '[';
ds_ini_sign_right = ']';
ds_ini_sign_equal = ' = ';
ds_ini_sign_comment = '; ';
ds_ini_head = '';
ds_ini_empty_lines = true;
