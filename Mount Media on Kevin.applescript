tell application "Finder"
	mount volume "smb://kevin/media"
	activate
	open ("/Volumes/media" as POSIX file)
end tell