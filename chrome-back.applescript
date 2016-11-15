#!/usr/bin/osascript
(**
 * @author		Suat Secmen (http://suat.be)
 * @copyright		2016 Suat Secmen
 * @license		WTFPL <http://www.wtfpl.net/>
 * @description
 *  Try to go back in frontmost Google Chrome tab.
 *  If not possible just close the tab.
 *)
tell application "Google Chrome" to tell the active tab of window 1
	set a to URL
	go back
	delay 0.2
	set b to URL
	if a is equal to b or b is equal to "chrome://newtab/" then close
end tell
