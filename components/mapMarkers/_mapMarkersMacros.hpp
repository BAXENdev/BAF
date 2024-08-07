
#include "..\..\utilityMacros.hpp"

#define GET_GROUP_ICON(SIDE,ICON) bax_mapMarkers_icons get bax_mapMarkers_groupMarkerTransparency get SIDE get ICON

#define MARKER_TEXTURE "bax_mapMarkers_texture"
#define MARKER_COLOR "bax_mapMarkers_color"
#define MARKER_HIDDEN "bax_mapMarkers_hidden"
#define MARKER_TEXT "bax_mapMarkers_text"
#define MARKER_DIRECTION "bax_mapMarkers_direction"
#define MARKER_SIZE "bax_mapMarkers_size"
#define MARKER_NAME "bax_mapMarkers_name"

#define ICON_MAN '\a3\ui_f\data\map\vehicleicons\iconMan_ca.paa'
#define ICON_MAN_AT '\A3\ui_f\data\map\vehicleicons\iconManAT_ca.paa'
#define ICON_MAN_ENG '\A3\ui_f\data\map\vehicleicons\iconManEngineer_ca.paa'
#define ICON_MAN_MG '\A3\ui_f\data\map\vehicleicons\iconManMG_ca.paa'
#define ICON_MAN_DEMO '\A3\ui_f\data\map\vehicleicons\iconManExplosive_ca.paa'
#define ICON_MAN_MED '\A3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa'
#define ICON_MAN_LEAD '\A3\ui_f\data\map\vehicleicons\iconManLeader_ca.paa'
#define ICON_MAN_DEAD '\a3\ui_f\data\igui\cfg\revive\overlayicons\f100_ca.paa'
#define ICON_MAN_UNCON '\a3\ui_f\data\igui\cfg\revive\overlayicons\u75_ca.paa'

#define B_ICON_MAN_REVIVE (getMissionPath 'assets\icons\iconManRevive.paa')
#define B_ICON_MAN_DEAD (getMissionPath 'assets\icons\iconManDead.paa')
#define B_ICON_MAN_ZEUS (getMissionPath 'assets\icons\iconManZeus.paa')

#define COLOR_WHITE [1,1,1,1]
#define COLOR_BLACK [0,0,0,1]
#define COLOR_RED [1,0,0,1]
#define COLOR_BLUE [0,0,1,1]
#define COLOR_GREEN [0,1,0,1]
#define COLOR_YELLOW [1,1,0,1]
#define COLOR_ORANGE [1,0.5,0,1]
#define COLOR_PURPLE [0.5,0,1,1]
#define COLOR_PINK [1,0.25,1,1]
#define COLOR_TAN [1,0.6,0.3,1]
#define COLOR_LGRAY [0.15,0.15,0.15,1]
#define COLOR_BLUFOR [0.0,0.3,0.6,1]
#define COLOR_OPFOR [0.5,0.0,0.0,1]
#define COLOR_INDFOR [0.0,0.5,0.0,1]
#define COLOR_CIV [0.4,0.0,0.5,1]

// SIDE: b o n
#define B_ICON_AIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_air.paa)))
#define B_ICON_ANTIAIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_antiair.paa)))
#define B_ICON_ARMOR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_armor.paa)))
#define B_ICON_ART(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_art.paa)))
#define B_ICON_HQ(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_hq.paa)))
#define B_ICON_INF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_inf.paa)))
#define B_ICON_INSTALLATION(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_installation.paa)))
#define B_ICON_MAINT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_maint.paa)))
#define B_ICON_MECHINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mech_inf.paa)))
#define B_ICON_MED(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_med.paa)))
#define B_ICON_MORTAR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mortar.paa)))
#define B_ICON_MOTORINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_motor_inf.paa)))
#define B_ICON_NAVAL(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_naval.paa)))
#define B_ICON_PLANE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_plane.paa)))
#define B_ICON_RECON(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_recon.paa)))
#define B_ICON_SERVICE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_service.paa)))
#define B_ICON_SUPPORT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_support.paa)))
#define B_ICON_UAV(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_uav.paa)))
#define B_ICON_UNKNOWN(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_unknown.paa)))

#define ICON_AIR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_air.paa))
#define ICON_ANTIAIR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_antiair.paa))
#define ICON_ARMOR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_armor.paa))
#define ICON_ART(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_art.paa))
#define ICON_HQ(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_hq.paa))
#define ICON_INF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_inf.paa))
#define ICON_INSTALLATION(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_installation.paa))
#define ICON_MAINT(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_maint.paa))
#define ICON_MECHINF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_mech_inf.paa))
#define ICON_MED(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_med.paa))
#define ICON_MORTAR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_mortar.paa))
#define ICON_MOTORINF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_motor_inf.paa))
#define ICON_NAVAL(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_naval.paa))
#define ICON_PLANE(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_plane.paa))
#define ICON_RECON(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_recon.paa))
#define ICON_SERVICE(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_service.paa))
#define ICON_SUPPORT(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_support.paa))
#define ICON_UAV(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_uav.paa))
#define ICON_UNKNOWN(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_unknown.paa))

#define ICON_AIR_C "\A3\ui_f\data\map\markers\nato\c_air.paa"
#define ICON_CAR_C "\A3\ui_f\data\map\markers\nato\c_car.paa"
#define ICON_PLANE_C "\A3\ui_f\data\map\markers\nato\c_plane.paa"
#define ICON_SHIP_C "\A3\ui_f\data\map\markers\nato\c_ship.paa"
#define ICON_UNKNOWN_C "\A3\ui_f\data\map\markers\nato\c_unknown.paa"

#define AIR "AIR"
#define ANTIAIR "ANTIAIR"
#define ARMOR "ARMOR"
#define ART "ARTILLERY"
#define HQ "HQ"
#define INF "INFANTRY"
#define INSTALLATION "INSTALLATION"
#define MAINT "MAINTENANCE"
#define MECHINF "MECHANIZEDINFANTRY"
#define MED "MEDIC"
#define MORTAR "MORTAR"
#define MOTORINF "MOTORIZEDINFANTRY"
#define NAVAL "NAVAL"
#define PLANE "PLANE"
#define RECON "RECON"
#define SERVICE "SERVICE"
#define SUPPORT "SUPPORT"
#define UAV "UAV"
#define UNKNOWN "UNKNOWN"
