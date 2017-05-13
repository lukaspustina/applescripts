set gistFilename to the text returned of (display dialog "Gist filename?" default answer "clipboard.txt" with title "Sending clipboard to gist")

set gistURL to (do shell script "pbpaste | /usr/local/bin/gist -f " & gistFilename)
set the clipboard to gistURL as text

display dialog gistURL buttons {"OK", "Open"} default button 1 with title "Created gist"
if the button returned of the result is "Open" then
	open location gistURL as URL
end if

