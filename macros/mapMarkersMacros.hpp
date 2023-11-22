
#include "iconMacros.hpp"

#define SET_GROUP_COLOR(GROUP_NAME,GROUP_COLOR)         VAR_GROUP_COLORS set [toLower GROUP_NAME,GROUP_COLOR]
#define SET_GROUP_ICON(GROUP_NAME,GROUP_ICON)           VAR_GROUP_ICONS set [toLower GROUP_NAME,GROUP_ICON]
#define HIDE_GROUP(GROUP_NAME)                          VAR_GROUP_HIDDENS set [toLower GROUP_NAME,true] 
