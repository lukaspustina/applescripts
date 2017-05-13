if application "iTerm" is running then
	tell application "iTerm"
		activate
		create window with default profile
	end tell
else
	tell application "iTerm"
		activate
	end tell
end if