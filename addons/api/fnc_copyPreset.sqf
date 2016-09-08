/*
 * Author: ACRE2Team
 * SHORT DESCRIPTION
 *
 * Arguments:
 * 0: ARGUMENT ONE <TYPE>
 * 1: ARGUMENT TWO <TYPE>
 *
 * Return Value:
 * RETURN VALUE <TYPE>
 *
 * Example:
 * [ARGUMENTS] call acre_COMPONENT_fnc_FUNCTIONNAME
 *
 * Public: Yes
 */
#include "script_component.hpp"

params ["_radioClass", "_srcPresetName", "_dstPresetName"];

private _presetData = [_radioClass, _srcPresetName] call FUNC(getPresetData);
if(isNil "_presetData") exitWith { false };

private _presetCopy = HASH_COPY(_presetData);

[_radioClass,_dstPresetName,_presetCopy] call EFUNC(sys_data,registerRadioPreset);

true