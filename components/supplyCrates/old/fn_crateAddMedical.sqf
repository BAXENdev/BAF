
#include "..\..\..\macros\loadoutMacros.hpp"

// gearType: 0: bandages | 1: splint | 2: injectors | 3: Sutures | 4: blood | 5: plasma | 6: saline
params ["_factionID","_crateSuffix","_medicalType","_amount"];

_crateArray = GETVARM(VARS_CRATE(_factionID,_crateSuffix),nil);
_medicalItems = switch (_medicalType) do {
	case 0: {[
		["ACE_fieldDressing",_amount],
		["ACE_elasticBandage",_amount],
		["ACE_packingBandage",_amount],
		["ACE_quikclot",_amount],
		["ACE_tourniquet",_amount]
	]};
	case 1: {[
		["ACE_splint",_amount]
	]};
	case 2: {[
		["ACE_adenosine",_amount],
		["ACE_epinephrine",_amount],
		["ACE_morphine",_amount]
	]};
	case 3: {[
		["ACE_suture",_amount]
	]};
	case 4: {[
		["ACE_bloodIV",_amount],
		["ACE_bloodIV_500",_amount],
		["ACE_bloodIV_250",_amount]
	]};
	case 5: {[
		["ACE_plasmaIV",_amount],
		["ACE_plasmaIV_500",_amount],
		["ACE_plasmaIV_250",_amount]
	]};
	case 6: {[
		["ACE_salineIV",_amount],
		["ACE_salineIV_500",_amount],
		["ACE_salineIV_250",_amount]
	]};
	default {[]};
};
_crateItems = _crateArray select 1;
_crateItems append _medicalItems;
