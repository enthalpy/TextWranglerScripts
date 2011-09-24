--
-- This script can be used to make TextWrangler execute commands in R.
-- It executes the current selection. If no text is selected it executes the current line.
-- Jean Thioulouse - Nov. 2008 - Jean.Thioulouse_at_univ-lyon1.fr
--
tell application "TextWrangler"
  set the_selection to (selection of front window as string)
  if (the_selection) is "" then
    set the_selection to line (get startLine of selection) of front window as string
  end if
end tell
tell application "R"
  cmd the_selection
end tell
