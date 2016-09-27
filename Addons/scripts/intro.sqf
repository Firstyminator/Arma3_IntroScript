/*
    Author: Firsty
    Copyright by Firsty (C) 2016
*/

// Triggers the audio intro.ogg via "class CfgMusic" from description.ext
[] spawn {
	playMusic "FirstyIntro";
};
// Loading text on black background change YOURTEXT with what you want. They appear in order, centered on the screen.
	titleCut ["", "BLACK FADED", 999];
[] Spawn {
	titleText ["YOURTEXT","PLAIN"]; 
	titleFadeOut 3;
	sleep 3;
	titleText ["YOURTEXT","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["YOURTEXT","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleText ["YOURTEXT","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	titleCut ["", "BLACK IN", 5];
	};
	
// Messages shown ingame on the right "storytelling"
private ["_messages", "_timeout"];

_messages = [
	["Welcome to YOURMAPNAME", (name player)], // change YOURMAPNAME with the Map you want the script to greet you with.
	["", "YOURSTORY1"], //First story text
	["", "YOURSTORY2"], //Second story text
	["", "YOURSTORY3"], //Third story text
	["", "YOURSTORY4"] //Fourth story text
];

_timeout = 8;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#FFFFFF' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;