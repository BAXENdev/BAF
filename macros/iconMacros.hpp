
#include "utilityMacros.hpp"

#define COLOR_BLUFOR                                    [0.0, 0.3, 0.6, 1.0]
#define COLOR_OPFOR                                     [0.5, 0.0, 0.0, 1.0]
#define COLOR_INDFOR                                    [0.0, 0.5, 0.0, 1.0]
#define COLOR_RED                                       [1.0, 0.0, 0.0, 1.0]
#define COLOR_ORANGE                                    [1.0, 0.5, 0.0, 1.0]
#define COLOR_YELLOW                                    [1.0, 1.0, 0.0, 1.0]
#define COLOR_LIME                                      [0.5, 1.0, 0.0, 1.0]
#define COLOR_GREEN                                     [0.0, 1.0, 0.0, 1.0]
#define COLOR_TURQUISE                                  [0.0, 1.0, 0.5, 1.0]
#define COLOR_CYAN                                      [0.0, 1.0, 1.0, 1.0]
#define COLOR_L_BLUE                                    [0.0, 0.5, 1.0, 1.0]
#define COLOR_BLUE                                      [0.0, 0.0, 1.0, 1.0]
#define COLOR_PURPLE                                    [0.5, 0.0, 1.0, 1.0]
#define COLOR_MAGENTA                                   [1.0, 0.0, 1.0, 1.0]
#define COLOR_PINK                                      [1.0, 0.0, 0.5, 1.0]
#define COLOR_GRAY                                      [0.5, 0.5, 0.5, 1.0]

#define ICON_MAN                                        "\A3\ui_f\data\map\vehicleicons\iconMan_ca.paa"
#define ICON_MEDIC                                      "\A3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa"
#define ICON_AT                                         "\A3\ui_f\data\map\vehicleicons\iconManAT_ca.paa"
#define ICON_MG                                         "\A3\ui_f\data\map\vehicleicons\iconManMG_ca.paa"
#define ICON_COMMANDER                                  "\A3\ui_f\data\map\vehicleicons\iconManCommander_ca.paa"
#define ICON_LEADER                                     "\A3\ui_f\data\map\vehicleicons\iconManLeader_ca.paa"
#define ICON_ENGINEER                                   "\A3\ui_f\data\map\vehicleicons\iconManEngineer_ca.paa"
#define ICON_EXPLOSIVE                                  "\A3\ui_f\data\map\vehicleicons\iconManExplosive_ca.paa"

#define ICON_B_AIR                                      "\A3\ui_f\data\map\markers\nato\b_air.paa"
#define ICON_B_ANTIAIR                                  "\A3\ui_f\data\map\markers\nato\b_antiair.paa"
#define ICON_B_ARMOR                                    "\A3\ui_f\data\map\markers\nato\b_armor.paa"
#define ICON_B_ARTILLERY                                "\A3\ui_f\data\map\markers\nato\b_art.paa"
#define ICON_B_HQ                                       "\A3\ui_f\data\map\markers\nato\b_hq.paa"
#define ICON_B_INFANTRY                                 "\A3\ui_f\data\map\markers\nato\b_inf.paa"
#define ICON_B_INSTALLATION                             "\A3\ui_f\data\map\markers\nato\b_installation.paa"
#define ICON_B_MAINTENANCE                              "\A3\ui_f\data\map\markers\nato\b_maint.paa"
#define ICON_B_MECHANIZED                               "\A3\ui_f\data\map\markers\nato\b_mech_inf.paa"
#define ICON_B_MEDICAL                                  "\A3\ui_f\data\map\markers\nato\b_med.paa"
#define ICON_B_MORTAR                                   "\A3\ui_f\data\map\markers\nato\b_mortar.paa"
#define ICON_B_MOTORIZED                                "\A3\ui_f\data\map\markers\nato\b_motor_inf.paa"
#define ICON_B_NAVAL                                    "\A3\ui_f\data\map\markers\nato\b_naval.paa"
#define ICON_B_ORDNANCE                                 "\A3\ui_f\data\map\markers\nato\b_Ordnance_ca.paa"
#define ICON_B_PLANE                                    "\A3\ui_f\data\map\markers\nato\b_plane.paa"
#define ICON_B_RECON                                    "\A3\ui_f\data\map\markers\nato\b_recon.paa"
#define ICON_B_SERVICE                                  "\A3\ui_f\data\map\markers\nato\b_service.paa"
#define ICON_B_SUPPORT                                  "\A3\ui_f\data\map\markers\nato\b_support.paa"
#define ICON_B_UAV                                      "\A3\ui_f\data\map\markers\nato\b_uav.paa"
#define ICON_B_UNKNOWN                                  "\A3\ui_f\data\map\markers\nato\b_unknown.paa"

#define ICON_O_AIR                                      "\A3\ui_f\data\map\markers\nato\o_air.paa"
#define ICON_O_ANTIAIR                                  "\A3\ui_f\data\map\markers\nato\o_antiair.paa"
#define ICON_O_ARMOR                                    "\A3\ui_f\data\map\markers\nato\o_armor.paa"
#define ICON_O_ARTILLERY                                "\A3\ui_f\data\map\markers\nato\o_art.paa"
#define ICON_O_HQ                                       "\A3\ui_f\data\map\markers\nato\o_hq.paa"
#define ICON_O_INFANTRY                                 "\A3\ui_f\data\map\markers\nato\o_inf.paa"
#define ICON_O_INSTALLATION                             "\A3\ui_f\data\map\markers\nato\o_installation.paa"
#define ICON_O_MAINTENANCE                              "\A3\ui_f\data\map\markers\nato\o_maint.paa"
#define ICON_O_MECHANIZED                               "\A3\ui_f\data\map\markers\nato\o_mech_inf.paa"
#define ICON_O_MEDICAL                                  "\A3\ui_f\data\map\markers\nato\o_med.paa"
#define ICON_O_MORTAR                                   "\A3\ui_f\data\map\markers\nato\o_mortar.paa"
#define ICON_O_MOTORIZED                                "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa"
#define ICON_O_NAVAL                                    "\A3\ui_f\data\map\markers\nato\o_naval.paa"
#define ICON_O_ORDNANCE                                 "\A3\ui_f\data\map\markers\nato\o_Ordnance_ca.paa"
#define ICON_O_PLANE                                    "\A3\ui_f\data\map\markers\nato\o_plane.paa"
#define ICON_O_RECON                                    "\A3\ui_f\data\map\markers\nato\o_recon.paa"
#define ICON_O_SERVICE                                  "\A3\ui_f\data\map\markers\nato\o_service.paa"
#define ICON_O_SUPPORT                                  "\A3\ui_f\data\map\markers\nato\o_support.paa"
#define ICON_O_UAV                                      "\A3\ui_f\data\map\markers\nato\o_uav.paa"
#define ICON_O_UNKNOWN                                  "\A3\ui_f\data\map\markers\nato\o_unknown.paa"

#define ICON_N_AIR                                      "\A3\ui_f\data\map\markers\nato\n_air.paa"
#define ICON_N_ANTIAIR                                  "\A3\ui_f\data\map\markers\nato\n_antiair.paa"
#define ICON_N_ARMOR                                    "\A3\ui_f\data\map\markers\nato\n_armor.paa"
#define ICON_N_ARTILLERY                                "\A3\ui_f\data\map\markers\nato\n_art.paa"
#define ICON_N_HQ                                       "\A3\ui_f\data\map\markers\nato\n_hq.paa"
#define ICON_N_INFANTRY                                 "\A3\ui_f\data\map\markers\nato\n_inf.paa"
#define ICON_N_INSTALLATION                             "\A3\ui_f\data\map\markers\nato\n_installation.paa"
#define ICON_N_MAINTENANCE                              "\A3\ui_f\data\map\markers\nato\n_maint.paa"
#define ICON_N_MECHANIZED                               "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa"
#define ICON_N_MEDICAL                                  "\A3\ui_f\data\map\markers\nato\n_med.paa"
#define ICON_N_MORTAR                                   "\A3\ui_f\data\map\markers\nato\n_mortar.paa"
#define ICON_N_MOTORIZED                                "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa"
#define ICON_N_NAVAL                                    "\A3\ui_f\data\map\markers\nato\n_naval.paa"
#define ICON_N_ORDNANCE                                 "\A3\ui_f\data\map\markers\nato\n_Ordnance_ca.paa"
#define ICON_N_PLANE                                    "\A3\ui_f\data\map\markers\nato\n_plane.paa"
#define ICON_N_RECON                                    "\A3\ui_f\data\map\markers\nato\n_recon.paa"
#define ICON_N_SERVICE                                  "\A3\ui_f\data\map\markers\nato\n_service.paa"
#define ICON_N_SUPPORT                                  "\A3\ui_f\data\map\markers\nato\n_support.paa"
#define ICON_N_UAV                                      "\A3\ui_f\data\map\markers\nato\n_uav.paa"
#define ICON_N_UNKNOWN                                  "\A3\ui_f\data\map\markers\nato\n_unknown.paa"

#define ICON_C_UNKNOWN                                  "\A3\ui_f\data\map\markers\nato\c_unknown.paa"
