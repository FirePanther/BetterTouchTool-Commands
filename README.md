# BetterTouchTool-Commands

### Run *.applescript from BTT (BetterTouchTool):

- Set "Trigger Predefined Action" to "Execute Terminal Command"
- Set the command to execute to `osascript -l JavaScript $HOME/~your-path~/BTT/~filename~.applescript`

### Why not .scpt (binary) instead?

For git (versioning)

## JavaScript instead of AppleScript

I changed my code to [JavaScript (JXA)](https://developer.apple.com/library/content/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/Introduction.html).
If you want to run the code in the Script Editor don't forget to change the language:  
![JavaScript instead of AppleScript](http://i.dv.tl/applescipt-javascript.png)


And if you want to run it from the Terminal, run it with `osascript -l JavaScript ~filename~.applescript`.