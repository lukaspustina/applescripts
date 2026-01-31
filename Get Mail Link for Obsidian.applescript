tell application "Mail"
    set _sel to get selection
    if (count of _sel) = 0 then return

    set _msg to item 1 of _sel
    set _subject to subject of _msg
    set _sender to extract name from (sender of _msg)
    set _firstName to first word of _sender
    set _messageURL to "message://%3c" & _msg's message id & "%3e"

    set _mdLink to "[E-Mail von " & _firstName & "](" & _messageURL & ")"

    set the clipboard to _mdLink
end tell
