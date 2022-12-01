#define XmusicCleanup
// return: true if successful

return(external_call(global.__xmusiccleanup))
#define XmusicFree
// argument0: music element
// return: true if successful

return(external_call(global.__xmusicfree,argument0))
#define XmusicIsPlaying
// argument0: music element
// return: true if is playing

return(external_call(global.__xmusicisplaying,argument0))
#define XmusicLength
// argument0: music element
// return: length (frames)

return(external_call(global.__xmusiclength,argument0))
#define XmusicLoad
// argument0: filename (Supported file formats: Uncompressed WAV, Uncompressed AIFF, Ogg Vorbis, FLAC, MP3, MOD, S3M, IT, XM)
// return: music element

return(external_call(global.__xmusicload,argument0))
#define XmusicPan
// argument0: music element
// argument1: pan
// return: true if successful

return(external_call(global.__xmusicpan,argument0,min(1,max(-1,argument1))))
#define XmusicPanGet
// argument0: music element
// return: pan

return(external_call(global.__xmusicpanget,argument0))
#define XmusicPitch
// argument0: music element
// argument1: pitch
// return: true if successful

return(external_call(global.__xmusicpitch,argument0,min(2,max(0.5,argument1))))
#define XmusicPitchGet
// argument0: music element
// return: pitch

return(external_call(global.__xmusicpitchget,argument0))
#define XmusicPlay
// argument0: music element
// return: true if successful

return(external_call(global.__xmusicplay,argument0))
#define XmusicPosition
// argument0: music element
// return: position (frames)

return(external_call(global.__xmusicposition,argument0))
#define XmusicRepeat
// argument0: music element
// argument1: repeat
// return: true if successful

return(external_call(global.__xmusicrepeat,argument0,argument1))
#define XmusicReset
// argument0: music element
// return: true if successful

return(external_call(global.__xmusicreset,argument0))
#define XmusicSeek
// argument0: music element
// argument1: position (frames)
// return: true if successful

return(external_call(global.__xmusicseek,argument0,max(0,argument1)))
#define XmusicStop
// argument0: music element
// return: true if successful

return(external_call(global.__xmusicstop,argument0))
#define XmusicVolume
// argument0: music element
// argument1: volume
// return: true if successful

return(external_call(global.__xmusicvolume,argument0,min(1,max(0,argument1))))
#define XmusicVolumeGet
// argument0: music element
// return: volume

return(external_call(global.__xmusicvolumeget,argument0))
#define XsoundCleanup
// return: true if successful

return(external_call(global.__xsoundcleanup))
#define XsoundFree
// argument0: sound element
// return: true if successful

return(external_call(global.__xsoundfree,argument0))
#define XsoundLoad
// argument0: filename (Supported file formats: Uncompressed WAV, Uncompressed AIFF, Ogg Vorbis, FLAC, MP3, MOD, S3M, IT, XM)
// return: sound element

return(external_call(global.__xsoundload,argument0))
#define XsoundPan
// argument0: sound element
// argument1: pan
// return: true if successful

return(external_call(global.__xsoundpan,argument0,min(1,max(-1,argument1))))
#define XsoundPanGet
// argument0: sound element
// return: pan

return(external_call(global.__xsoundpanget,argument0))
#define XsoundPitch
// argument0: sound element
// argument1: pitch
// return: true if successful

return(external_call(global.__xsoundpitch,argument0,min(2,max(0.5,argument1))))
#define XsoundPitchGet
// argument0: sound element
// return: pitch

return(external_call(global.__xsoundpitchget,argument0))
#define XsoundPlay
// argument0: sound element
// return: true if successful

return(external_call(global.__xsoundplay,argument0))
#define XsoundStop
// argument0: sound element
// return: true if successful

return(external_call(global.__xsoundstop,argument0))
#define XsoundVolume
// argument0: sound element
// argument1: volume
// return: true if successful

return(external_call(global.__xsoundvolume,argument0,min(1,max(0,argument1))))
#define XsoundVolumeGet
// argument0: sound element
// return: true if successful

return(external_call(global.__xsoundvolumeget,argument0))
#define XaudioFree
if(variable_global_exists('__xaudiodllname'))
external_free(global.__xaudiodllname)
#define XaudioInit
// argument0: DLL filename

if(file_exists(argument0))
{

global.__xaudiodllname=argument0
global.__xmusicload=external_define(argument0,'XmusicLoad',dll_cdecl,ty_real,1,ty_string)
global.__xmusicfree=external_define(argument0,'XmusicFree',dll_cdecl,ty_real,1,ty_real)
global.__xmusicplay=external_define(argument0,'XmusicPlay',dll_cdecl,ty_real,1,ty_real)
global.__xmusicstop=external_define(argument0,'XmusicStop',dll_cdecl,ty_real,1,ty_real)
global.__xmusicvolume=external_define(argument0,'XmusicVolume',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xmusicvolumeget=external_define(argument0,'XmusicVolumeGet',dll_cdecl,ty_real,1,ty_real)
global.__xmusicpan=external_define(argument0,'XmusicPan',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xmusicpanget=external_define(argument0,'XmusicPanGet',dll_cdecl,ty_real,1,ty_real)
global.__xmusicpitch=external_define(argument0,'XmusicPitch',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xmusicpitchget=external_define(argument0,'XmusicPitchGet',dll_cdecl,ty_real,1,ty_real)
global.__xmusicreset=external_define(argument0,'XmusicReset',dll_cdecl,ty_real,1,ty_real)
global.__xmusicisplaying=external_define(argument0,'XmusicIsPlaying',dll_cdecl,ty_real,1,ty_real)
global.__xmusicseek=external_define(argument0,'XmusicSeek',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xmusicposition=external_define(argument0,'XmusicPosition',dll_cdecl,ty_real,1,ty_real)
global.__xmusiclength=external_define(argument0,'XmusicLength',dll_cdecl,ty_real,1,ty_real)
global.__xmusicrepeat=external_define(argument0,'XmusicRepeat',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xmusiccleanup=external_define(argument0,'XmusicCleanup',dll_cdecl,ty_real,0)
global.__xsoundload=external_define(argument0,'XsoundLoad',dll_cdecl,ty_real,1,ty_string)
global.__xsoundfree=external_define(argument0,'XsoundFree',dll_cdecl,ty_real,1,ty_real)
global.__xsoundplay=external_define(argument0,'XsoundPlay',dll_cdecl,ty_real,1,ty_real)
global.__xsoundstop=external_define(argument0,'XsoundStop',dll_cdecl,ty_real,1,ty_real)
global.__xsoundvolume=external_define(argument0,'XsoundVolume',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xsoundvolumeget=external_define(argument0,'XsoundVolumeGet',dll_cdecl,ty_real,1,ty_real)
global.__xsoundpan=external_define(argument0,'XsoundPan',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xsoundpanget=external_define(argument0,'XsoundPanGet',dll_cdecl,ty_real,1,ty_real)
global.__xsoundpitch=external_define(argument0,'XsoundPitch',dll_cdecl,ty_real,2,ty_real,ty_real)
global.__xsoundpitchget=external_define(argument0,'XsoundPitchGet',dll_cdecl,ty_real,1,ty_real)
global.__xsoundcleanup=external_define(argument0,'XsoundCleanup',dll_cdecl,ty_real,0)
global.__xtagget=external_define(argument0,'XtagGet',dll_cdecl,ty_string,3,ty_string,ty_real,ty_real)

}
else
show_error('XeAudiere DLL not found!',true)
#define XaudioHeader
ID3V11=0
TITLE=0
ARTIST=1
ALBUM=2
YEAR=3
COMMENT=4
TRACK=5
GENRE=6

#define XtagGet
// argument0: filename
// argument1: tag type
// argument2: tag version
// return: tag string

return(external_call(global.__xtagget,argument0,argument1,argument2))

