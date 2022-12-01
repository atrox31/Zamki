#define text
//text( %nazwa% ) zwraca teskt o podanym kodzie
var i,j,temp,_temp;
for (i=1; i<=global.tablica_stringow[0,0]; i+=1)
{
 if (argument0=global.tablica_stringow[i,1]) { 
 _temp='';
 temp='';
  // zamiana polskich znaków
  for (j=1; j<=string_length(global.tablica_stringow[i,2]); j+=1)
    {
     temp=string_copy(global.tablica_stringow[i,2],j,1)
     switch temp
     {
		      case '¥': temp='@'; break;
        case 'Ê': temp='$'; break;
        case 'Ó': temp='^'; break;
        case '£': temp='&'; break;
        case 'Ñ': temp='_'; break;
        case 'Æ': temp='+'; break;
        case '': temp='='; break;
        case '¯': temp='['; break;
        case 'Œ': temp=']'; break;
        case '¹': temp='{'; break;
        case '¿': temp='}'; break;
        case 'Ÿ': temp="'"; break;
        case 'œ': temp='|'; break;
        case 'æ': temp='\'; break;
        case 'ê': temp='>'; break;
        case 'ó': temp='<'; break;
        case '³': temp='`'; break;
        case 'ñ': temp='"'; break;
     };
     _temp+=temp;
    };
  return _temp;//global.tablica_stringow[i,2]; 
  break; 
 }
}

#define ArtLangIni
// ArtLangIni ( index )
// wczytuje zmienne jêzykowe do globalnej tablicy
// funkcja text( $nazwa$ ) zwraca tekst z globalnej tablicy

globalvar tablica_stringow;
//global.tablica_stringow[ %kod% , wartoœæ ]
var plik,i,temp;
plik=file_text_open_read(working_directory+ '\lang\' + argument0 + '.lang')
if !(plik=-1)
{
i=1;

while !(file_text_eof(plik)) do
{  
 
 temp=file_text_read_string(plik);
 file_text_readln(plik)
 
 global.tablica_stringow[i,2]=string_delete(temp,1,8);
 global.tablica_stringow[i,1]=string_delete(temp,9,string_length(temp)-8);
 
 i+=1; 
}
global.tablica_stringow[0,0]=i-1;
file_text_close(plik)
}else{
 show_message('Plik "'+argument0+'.lang" nie zosta³ odnaleziony! Zmieñ jêzyk w pliku "game.ini" lub zainstaluj aplikaje ponownie.##File "'+argument0+'.lang" can`t be found! Change language in "game.ini" or reinstall the game.');
 global.error=1;
};

#define ArtDeszyfr
//deszyfruj ( string )
 var _klucz,i,_znaki,_len;
    argument0 = string( argument0 );
    _znaki = '';
    _len = string_length( argument0 );
    _klucz = 1420;

    
    for ( i = 1; i <= _len; i += 1 )
    {
        _znaki += chr( ord( string_char_at( argument0, i ) ) ^ _klucz );
    }
    
    return _znaki;

#define ArtSprite
/*
Advanced sprite loader by Ranma_man
arg0 - nazwa pliku (string)
arg1 - numer klatek
arg2 - przezroczyste
arg3 - rozmyte
arg4 - xsrodek
arg5 -ysrodek
*/ 

var spr; //Stworz tymczasowe zmienne


/* Rozpoznaj plik */
on = 'graph/' + argument0 + '.afx';
if (file_exists(on)) { 
/* Mmien na chwile rozszerzenie by GM mogl odczytac grafike */
nn = filename_change_ext( on , '.png' ); 

/* Kopiuj plik tymczasowo, by nie operowac na oryginale */
file_copy( on , nn );

/* Zmien na plik na czytelny GIF zmieniajac ISTRIP na GIF */
fh = file_bin_open(nn,1);
file_bin_write_byte(fh,137);
file_bin_seek(fh,1);
file_bin_write_byte(fh,80);
file_bin_seek(fh,2);
file_bin_write_byte(fh,78);
file_bin_seek(fh,3);
file_bin_write_byte(fh,71);
file_bin_seek(fh,4);
file_bin_write_byte(fh,13);
file_bin_seek(fh,5);
file_bin_write_byte(fh,10);
file_bin_close(fh);

spr=sprite_add(nn,argument1,argument2,argument3,argument4,argument5)
file_delete(nn);

  }
  else
  {
on = 'graph/' + argument0 + '.aax';
/* Mmien na chwile rozszerzenie by GM mogl odczytac grafike */
nn = filename_change_ext( on , '.gif' ); 

/* Kopiuj plik tymczasowo, by nie operowac na oryginale */
file_copy( on , nn );

/* Zmien na plik na czytelny GIF zmieniajac ISTRIP na GIF */
fh = file_bin_open(nn,1);
file_bin_write_byte(fh,71);
file_bin_seek(fh,1);
file_bin_write_byte(fh,73);
file_bin_seek(fh,2);
file_bin_write_byte(fh,70);
file_bin_seek(fh,3);
file_bin_write_byte(fh,56);
file_bin_seek(fh,4);
file_bin_write_byte(fh,57);
file_bin_seek(fh,5);
file_bin_write_byte(fh,97);
file_bin_close(fh);

spr=sprite_add(nn,argument1,argument2,argument3,argument4,argument5)
file_delete(nn);


};

return spr;

#define ArtSkrypt
plik=file_text_open_read(working_directory+"/scripts/"+argument0+".srt")

var tmp,str;

str="";
 while (!file_text_eof(plik))
  {
   tmp=file_text_read_string(plik)
   str+=ArtDeszyfr(tmp)+chr(13) + chr(10);
   file_text_readln(plik)
  }
 file_text_close(plik)
 
return str;

#define ArtRozdzielczosc
// ArtRozdzielczosc ( wysokosc, szerokosc ) argument2 argument3
display_set_size(argument0,argument1)
window_set_size(argument0,argument1)

w=argument0;
h=argument1;
view_xview[0]=0;
view_yview[0]=0;
view_wview[0]=w;
view_hview[0]=h;
view_wport[0]=w;
view_hport[0]=h;

window_set_rectangle(0,0,w,h);
window_set_region_size(w,h,1);
//window_set_region_scale(-1,1);

view_enabled=1;
view_visible[0]=1;

#define ArtAudio
/*
Advanced sprite loader by Ranma_man
arg0 - nazwa pliku (string)
arg1 - rodzaj 0/1
*/

var aud; //Stworz tymczasowe zmienne


/* Rozpoznaj plik */
on = 'audio/' + argument0 + '.aso';

/* Mmien na chwile rozszerzenie by GM mogl odczytac grafike */
nn = filename_change_ext( on , '.wav' ); 

/* Kopiuj plik tymczasowo, by nie operowac na oryginale */
file_copy( on , nn );

/* Zmien na plik na czytelny GIF zmieniajac ISTRIP na GIF */
fh = file_bin_open(nn,1);
file_bin_write_byte(fh,137);
file_bin_seek(fh,1);
file_bin_write_byte(fh,80);
file_bin_seek(fh,2);
file_bin_write_byte(fh,78);
file_bin_seek(fh,3);
file_bin_write_byte(fh,71);
file_bin_seek(fh,4);
file_bin_write_byte(fh,13);
file_bin_seek(fh,5);
file_bin_write_byte(fh,10);
file_bin_close(fh);

aud=sound_add(nn,argument1,0);
file_delete(nn);

return aud;

#define collision_line_list
/*
**  Usage:
**      collision_line_list(x1,y1,x2,y2,obj,prec,notme)
**
**  Arguments:
**      x1,y1       start point of the collision line
**      x2,y2       end point of the collision line
**      obj         object to check for collision
**      prec        set to true for precise collision checking
**      notme       set to true to ignore the calling instance
**
**  Returns:
**      a ds_list id, or keyword noone if no instances are found
**
**  GMLscripts.com
*/
{
    var x1,y1,x2,y2,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    obj = argument4;
    prec = argument5;
    notme = argument6;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_line(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
#define collision_rectangle_list
/*
**  Usage:
**      collision_rectangle_list(x1,y1,x2,y2,obj,prec,notme)
**
**  Arguments:
**      x1,y1       first corner of the collision rectangle (filled)
**      x2,y2       opposite corner of the collision rectangle (filled)
**      obj         object to check for collision
**      prec        set to true for precise collision checking
**      notme       set to true to ignore the calling instance
**
**  Returns:
**      a ds_list id, or keyword noone if no instances are found
**
**  GMLscripts.com
*/
{
    var x1,y1,x2,y2,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    obj = argument4;
    prec = argument5;
    notme = argument6;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_rectangle(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
#define color_mix
/*
**  Usage:
**      color_mix(color1,color2)
**
**  Arguments:
**      color1      first color
**      color2      second color
**
**  Returns:
**      a 50/50 mixture of the two given colors
**
**  GMLscripts.com
*/
{
    return (argument0 & $fefefe) + (argument1 & $fefefe) >> 1;
}
#define draw_sprite_wave
/*
**  Usage:
**      draw_sprite_wave(sprite,subimage,x,y,axis,wavelength,amplitude,phase)
**
**  Arguments:
**      sprite          sprite index
**      subimage        sprite subimage
**      x,y             position in room to draw sprite
**      axis            0 = horizontal wave, 1 = vertical wave
**      wavelength      length of wave in pixels, crest to crest
**      amplitude       half the height of wave in pixels, crest to trough
**      phase           wave position offset, vary to animate wave
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a sprite with wave-like distortion. 
**      The fractional part of the phase argument controls the cycle
**      of the wave, a full cycle covers the [0..1] interval.
**
**  GMLscripts.com
*/
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase;
    sprite     = argument0;
    image      = argument1;
    posx       = argument2;
    posy       = argument3;
    axis       = argument4;
    wavelength = argument5;
    amplitude  = argument6;
    phase      = argument7;

    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width  = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff   = sprite_get_xoffset(sprite);
    yoff   = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;

    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = shift-xoff+posx;
            sy = i-yoff+posy;
            draw_sprite_part(sprite,image,0,i,width,1,sx,sy);
        }else{
            sx = i-xoff+posx;
            sy = shift-yoff+posy;
            draw_sprite_part(sprite,image,i,0,1,height,sx,sy);
        }
    }
}
#define draw_sprite_wave_ext
/*
**  Usage:
**      draw_sprite_wave_ext(sprite,subimage,x,y,axis,wavelength,amplitude,
**                           phase,xscale,yscale,blend,alpha)
**
**  Arguments:
**      sprite          sprite index
**      subimage        sprite subimage
**      x,y             position in room to draw sprite
**      axis            0 = horizontal wave, 1 = vertical wave
**      wavelength      length of wave in pixels, crest to crest
**      amplitude       half the height of wave in pixels, crest to trough
**      phase           wave position offset, vary to animate wave
**      xscale,yscale   scaling of sprite along x and y axes
**      blend           color to blend with sprite
**      alpha           alpha used to draw sprite
**
**  Returns:
**      nothing
**
**  Notes:
**      Draws a sprite with wave-like distortion. If scaling
**      is used, the wavelength of the wave will also be scaled.
**      The fractional part of the phase argument controls the cycle
**      of the wave, a full cycle covers the [0..1] interval.
**
**  GMLscripts.com
*/
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase,xscale,yscale,blend,alpha;
    sprite     = argument0;
    image      = argument1;
    posx       = argument2;
    posy       = argument3;
    axis       = argument4;
    wavelength = argument5;
    amplitude  = argument6;
    phase      = argument7;
    xscale     = argument8;
    yscale     = argument9;
    blend      = argument10;
    alpha      = argument11;

    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width  = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff   = sprite_get_xoffset(sprite);
    yoff   = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;

    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = xscale*(shift-xoff)+posx;
            sy = yscale*(i-yoff)+posy;
            draw_sprite_part_ext(sprite,image,0,i,width,1,sx,sy,xscale,yscale,blend,alpha);
        }else{
            sx = xscale*(i-xoff)+posx;
            sy = yscale*(shift-yoff)+posy;
            draw_sprite_part_ext(sprite,image,i,0,1,height,sx,sy,xscale,yscale,blend,alpha);
        }
    }
}
#define hex_to_color
/*
**  Usage:
**      hex_to_color(hex)
**
**  Arguments:
**      hex     a string of hexadecimal digits 
**              representing a color in RRGGBB format
**
**  Returns:
**      a color generated from the given hexadecimal color code
**
**  Dependencies:
**      hex_to_dec() - coverts a hexadecimal string to an integer
**
**  GMLscripts.com
*/
{
    var hex,dec,col;
    hex = argument0;
    dec = hex_to_dec(hex);
    col = (dec & 16711680) >> 16 | (dec & 65280) | (dec & 255) << 16;
    return col;
}

#define map_objects
/*
**  Usage:
**      map_objects(ds_map)
**
**  Arguments:
**      ds_map      map to which all objects are loaded
**
**  Returns:
**      nothing, but fills the map with {key=name, val=index} pairs
**
**  GMLscripts.com
*/
{
    var no,i,ds_map;
    ds_map = argument0;
    no = object_add();
    object_delete(no);
    for (i=0; i<no; i+=1) {
        if (object_exists(i)) {
            ds_map_add(ds_map,object_get_name(i),i);
        }
    }
}
#define map_sounds
/*
**  Usage:
**      map_sounds(ds_map,ex_sound)
**
**  Arguments:
**      ds_map      map to which all sprites are loaded
**      ex_sound    filename from an external sound
**
**  Returns:
**      nothing, but fills the map with {key=name, val=index} pairs
**  Notes:
**      The loaded sound is "unloaded" directly, and only
**      used to get the max index number
**
**  GMLscripts.com
*/
{
    var no,i,ds_map;
    ds_map = argument0;
    no = sound_add(argument1,0,false);
    if (no != -1) {
        sound_delete(no);
        for (i=0; i<no; i+=1) {
            if (sound_exists(i)) {
                ds_map_add(ds_map,sound_get_name(i),i);
            }
        }
    }
}
#define map_sprites
/*
**  Usage:
**      map_sprites(ds_map)
**
**  Arguments:
**      ds_map      map to which all sprites are loaded
**
**  Returns:
**      nothing, but fills the map with {key=name, val=index} pairs
**
**  GMLscripts.com
*/
{
    var no,i,ds_map;
    ds_map = argument0;
    no = sprite_create_from_screen(0,0,1,1,false,false,0,0);
    sprite_delete(no);
    for (i=0; i<no; i+=1) {
        if (sprite_exists(i)) {
            ds_map_add(ds_map,sprite_get_name(i),i);
        }
    }
}

#define motion_blur
/*
**  Usage:
**      motion_blur(length,direction)
**
**  Arguments:
**      length          length of blur
**      direction       direction of the blur
**
**  Returns:
**      nothing
**
**  Notes:
**      Example of use (draw event): motion_blur(speed*2,direction);
**      Please also remember that the script is compatible with
**      image_alpha. For example: If image_alpha is 0.5 then whole
**      motion blur will have half tranparency.
**
**  GMLscripts.com
*/
{
    length = argument[0];
    
    if (length > 0) {
        step = 3;
        dir = degtorad(argument[1]);
        px = cos(dir);
        py = -sin(dir);
        
        a = image_alpha/(length/step);
        if (a >= 1) {
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
                            image_yscale,image_angle,image_blend,image_alpha);
            a /= 2;
        }
           
        for(i=length;i>=0;i-=step) {
            draw_sprite_ext(sprite_index,image_index,x+(px*i),y+(py*i),
                            image_xscale,image_yscale,image_angle,image_blend,a);
        }
    } else {    
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
                        image_yscale,image_angle,image_blend,image_alpha);
    }
}
#define point_line_distance
/*
**  Usage:
**      point_line_distance(x1,y1,x2,y2,x3,y3,segment)
**
**  Arguments:
**      x1,y1      first end point of line
**      x2,y2      second end point of line
**      x3,y3      point to measuring from
**      segment    set to true to limit to the line segment
**
**  Returns:
**      the distance from the given point to a given line
**
**  GMLscripts.com
*/
{
    var x0,y0,x1,y1,x2,y2,x3,y3,dx,dy,t,segment;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    x3 = argument4;
    y3 = argument5;
    segment = argument6;
    dx = x2 - x1;
    dy = y2 - y1;
    if ((dx == 0) && (dy == 0)) {
        x0 = x1;
        y0 = y1;
    }else{
        t = ((x3 - x1) * dx + (y3 - y1) * dy) / (dx * dx + dy * dy);
        if (segment) t = min(max(0,t),1);
        x0 = x1 + t * dx;
        y0 = y1 + t * dy;
    }
    return point_distance(x3,y3,x0,y0);
}
#define sprite_replace_color
/*
**  Usage:
**      sprite_replace_color(sprite,oldcolor,newcolor)
**
**  Arguments:
**      sprite      sprite to change
**      oldcolor    color that will be replaced
**      newcolor    color used as replacement
**
**  Returns:
**      (-1) on error
**
**  Notes:
**      This script replaces one color in a sprite with another.
**      No new sprites are created, the given sprite is changed.
**
**  GMLscripts.com
*/
{
    var sprite, oldc, newc;
    sprite = argument0;
    oldc  = argument1;
    newc  = argument2;
 
    var w, h, n, i, xo, yo, surf, tempsprite, newsprite, alphasprite;
    w  = sprite_get_width(sprite);
    h  = sprite_get_height(sprite);
    n  = sprite_get_number(sprite);
    xo = sprite_get_xoffset(sprite);
    yo = sprite_get_yoffset(sprite);
 
    surf = surface_create(w,h+1);
    surface_set_target(surf);
 
    for(i=0; i<n; i+=1) {
        draw_clear_alpha(c_black,1);
        draw_set_blend_mode_ext(bm_inv_dest_color,bm_one);
        draw_sprite(sprite,i,xo,yo);
        draw_set_blend_mode(bm_normal);
        draw_point_color(0,h,oldc);
        tempsprite = sprite_create_from_surface(surf,0,0,w,h+1,true,false,xo,yo);
        draw_clear_alpha(newc,1);
        draw_sprite(tempsprite,0,xo,yo);
        sprite_delete(tempsprite);
        if (i == 0) {
            newsprite = sprite_create_from_surface(surf,0,0,w,h,false,false,xo,yo);
            if (newsprite < 0) return -1;
        }else{
            sprite_add_from_surface(newsprite,surf,0,0,w,h,false,false);
        }     
        draw_clear_alpha(c_white,1);
        draw_set_blend_mode_ext(bm_zero,bm_src_alpha);
        draw_sprite(sprite,i,xo,yo);
        if (i == 0) {
            alphasprite = sprite_create_from_surface(surf,0,0,w,h,false,false,xo,yo);
            if (alphasprite < 0) {
                sprite_delete(newsprite);
                return -1;
            }
        }else{
            sprite_add_from_surface(alphasprite,surf,0,0,w,h,false,false);
        }
        draw_set_blend_mode(bm_normal);
    }
 
    surface_reset_target();
    sprite_assign(sprite,newsprite);
    sprite_set_alpha_from_sprite(sprite,alphasprite);
    sprite_delete(newsprite);
    sprite_delete(alphasprite);
    surface_free(surf);
}
#define collision_circle_list
/*
**  Usage:
**      collision_circle_list(x,y,radius,obj,prec,notme)
**
**  Arguments:
**      x,y         center of the collision circle (filled)
**      radius      radius of the collision circle (filled)
**      obj         object to check for collision
**      prec        set to true for precise collision checking
**      notme       set to true to ignore the calling instance
**
**  Returns:
**      a ds_list id, or keyword noone if no instances are found
**
**  GMLscripts.com
*/
{
    var x1,y1,radius,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    radius = argument2;
    obj = argument3;
    prec = argument4;
    notme = argument5;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_circle(x1,y1,radius,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
#define collision_ellipse_list
/*
**  Usage:
**      collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
**
**  Arguments:
**      x1,y1       corner of the collision ellipse (filled)
**      x2,y2       opposite corner of the collision ellipse (filled)
**      obj         object to check for collision
**      prec        set to true for precise collision checking
**      notme       set to true to ignore the calling instance
**
**  Returns:
**      a ds_list id, or keyword noone if no instances are found
**
**  GMLscripts.com
*/

{
    var x1,y1,x2,y2,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    obj = argument4;
    prec = argument5;
    notme = argument6;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_ellipse(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
#define collision_line_first
/*
**  Usage:
**      collision_line_first(x1,y1,x2,y2,object,prec,notme)
**
**  Given:
**      x1,y2       first point on collision line
**      x2,y2       second point on collision line
**      object      which objects to look for, or keyword all
**      prec        if true, use precise collision checking
**      notme       if true, ignore the calling instance
**
**  Returns:
**      the instance id of the given object colliding with the
**      given line and closest to the first given point,
**      or keyword noone if no instance is found
**
**  Notes:
**      Computes the answer in log2(range) collision checks
**
**  GMLscripts.com
*/
{
    var ox,oy,dx,dy,object,prec,notme,sx,sy,inst,i;
    ox = argument0;
    oy = argument1;
    dx = argument2;
    dy = argument3;
    object = argument4;
    prec = argument5;
    notme = argument6;
    sx = dx - ox;
    sy = dy - oy;
    inst = collision_line(ox,oy,dx,dy,object,prec,notme);
    if (inst != noone) {
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            i = collision_line(ox,oy,dx,dy,object,prec,notme);
            if (i) {
                dx -= sx;
                dy -= sy;
                inst = i;
            }else{
                dx += sx;
                dy += sy;
            }
        }
    }
    return inst;
}
#define hex_to_dec
/*
**  Usage:
**      hex_to_dec(hex)
**
**  Arguments:
**      hex     a string of hexadecimal digits, four bits per character
**
**  Returns:
**      a non-negative integer
**
**  GMLscripts.com
*/
{
    var hex,dec,h,p;
    hex = string_upper(argument0);
    dec = 0;
    h = "0123456789ABCDEF";
    for (p=1;p<=string_length(hex);p+=1) {
        dec = dec << 4 | (string_pos(string_char_at(hex,p),h)-1);
    }
    return dec;
}
#define draw_self
// draw_self ()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

