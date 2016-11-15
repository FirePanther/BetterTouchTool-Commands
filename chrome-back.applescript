tell application "Google Chrome" to tell the active tab of window 1
	set a to URL
	go back
	delay 0.2
	set b to URL
	if a is equal to b or b is equal to "chrome://newtab/" then close
end tell