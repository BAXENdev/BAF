
/*
 * Author: BAXENATOR
 * Determines the sidename of a unit.
 * Does not attempt to resolve vehicle side. 
 *
 * Arguments:
 * 0: _unit
 *
 * Return Value:
 * "blufor" | "opfor" | "indfor" | "civilian" | ""
 *
 * Example:
 * [_this] call BAF_fnc_factionToSideName;
 *
 * Public: Yes
 */

params[["_unit", null, ["", null]]];

// Return "" on fail
// TODO: Resolve vehicle case
if (isNull _unit or !(_unit isKindOf "CAManBase")) exitWith { ""; };

_faction = toLower (faction _unit);

if (_faction in ["blu_f", "blu_g_f", "blu_t_f", "blu_ctrg_f", "blu_gen_f", "blu_w_f"]) exitWith {
    "blufor";
};

if (_faction in ["opf_f", "opf_g_f", "opf_t_f", "opf_r_f"]) exitWith {
    "opfor";
};

if (_faction in ["ind_f", "ind_g_F", "ind_c_f", "ind_e_f", "ind_l_f"]) exitWith {
    "indfor";
};

if (_faction in ["civ_f", "civ_idap_f"]) exitWith {
    "civilian";
};

// If a unit's faction did not resolve 
_side = toLower (name (side _unit));
_sideName = "";
switch (_side) do {
    case "west": { _sideName = "blufor"; };
    case "east": { _sideName = "opfor"; };
    case "resistance": { _sideName = "indfor"; };
    case "civilian": { _sideName = "civilian"; };
    default { _sideName = ""; };
};

_sideName;
