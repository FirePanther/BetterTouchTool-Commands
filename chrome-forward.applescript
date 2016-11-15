tell application "Google Chrome"
	try
		set w to window 1
		set t to the active tab of w
		set a to URL of t
		go forward t
		delay 0.2
		set b to URL of t
		if a is equal to b then tell application "System Events" to keystroke "t" using {command down, shift down}
	on error e
		activate
		tell application "System Events" to keystroke "t" using {command down, shift down}
	end try
end tell
