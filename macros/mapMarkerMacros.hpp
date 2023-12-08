
#include "utilityMacros.hpp"

#define VARS_MARKER_TEXTURE BAX_VAR('marker_texture')
#define VARS_MARKER_HIDDEN BAX_VAR('marker_hidden')
#define VARS_MARKER_COLOR BAX_VAR('marker_color')

#define ICON_MAN '\a3\ui_f\data\map\vehicleicons\iconMan_ca.paa'
#define ICON_MAN_AT '\A3\ui_f\data\map\vehicleicons\iconManAT_ca.paa'
#define ICON_MAN_ENG '\A3\ui_f\data\map\vehicleicons\iconManEngineer_ca.paa'
#define ICON_MAN_MG '\A3\ui_f\data\map\vehicleicons\iconManMG_ca.paa'
#define ICON_MAN_DEMO '\A3\ui_f\data\map\vehicleicons\iconManExplosive_ca.paa'
#define ICON_MAN_MED '\A3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa'
#define ICON_MAN_LEAD '\A3\ui_f\data\map\vehicleicons\iconManLeader_ca.paa'
#define ICON_MAN_DEAD 'a3\ui_f\data\igui\cfg\revive\overlayicons\f100_ca.paa'
#define ICON_MAN_UNCON 'a3\ui_f\data\igui\cfg\revive\overlayicons\u75_ca.paa'

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
// #define COLOR_

#define BAX_ICON_AIR(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_air.paa')
#define BAX_ICON_ANTIAIR(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_antiair.paa')
#define BAX_ICON_ARMOR(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_armor.paa')
#define BAX_ICON_ART(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_art.paa')
#define BAX_ICON_HQ(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_hq.paa')
#define BAX_ICON_INF(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_inf.paa')
#define BAX_ICON_INSTALLATION(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_installation.paa')
#define BAX_ICON_MAINT(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_maint.paa')
#define BAX_ICON_MECHINF(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_mech_inf.paa')
#define BAX_ICON_MED(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_med.paa')
#define BAX_ICON_MORTAR(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_mortar.paa')
#define BAX_ICON_MOTORINF(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_motor_inf.paa')
#define BAX_ICON_NAVAL(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_naval.paa')
#define BAX_ICON_PLANE(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_plane.paa')
#define BAX_ICON_RECON(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_recon.paa')
#define BAX_ICON_SERVICE(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_service.paa')
#define BAX_ICON_SUPPORT(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_support.paa')
#define BAX_ICON_UAV(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_uav.paa')
#define BAX_ICON_UNKNOWN(SIDE) (MISSION_ROOT + 'assets\markers\' + SIDE + '_unknown.paa')

#define ICON_AIR(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_air.paa')
#define ICON_ANTIAIR(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_antiair.paa')
#define ICON_ARMOR(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_armor.paa')
#define ICON_ART(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_art.paa')
#define ICON_HQ(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_hq.paa')
#define ICON_INF(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_inf.paa')
#define ICON_INSTALLATION(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_installation.paa')
#define ICON_MAINT(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_maint.paa')
#define ICON_MECHINF(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_mech_inf.paa')
#define ICON_MED(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_med.paa')
#define ICON_MORTAR(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_mortar.paa')
#define ICON_MOTORINF(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_motor_inf.paa')
#define ICON_NAVAL(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_naval.paa')
#define ICON_PLANE(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_plane.paa')
#define ICON_RECON(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_recon.paa')
#define ICON_SERVICE(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_service.paa')
#define ICON_SUPPORT(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_support.paa')
#define ICON_UAV(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_uav.paa')
#define ICON_UNKNOWN(SIDE) ('\A3\ui_f\data\map\markers\nato\' + SIDE + '_unknown.paa')
