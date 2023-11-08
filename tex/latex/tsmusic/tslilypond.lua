--
-- This is file `tslilypond.lua',
-- generated with the docstrip utility.
--
-- The original source files were:
--
-- lilypond.dtx  (with options: `lua')
--  Copyright ℂ 2022 Tobias Schlemmer
-- 
--  This program is provided under the terms of the
--  LaTeX Project Public License distributed from CTAN
--  archives in directory macros/latex/base/lppl.txt.
-- 
--  This work is "maintained" (as per LPPL maintenance status) by
--  Tobias Schlemmer <keinstein@users.sf.net>.
-- 
--  This work consists of the files
--    tslilypond.dtx and
--    tslilypond.ins
-- 
--  and the derived files
--    tslilypond.sty
--    tslilypond.lua
-- 
-- 
local lilypond={}
lilypond['get_font_name'] = function (id)
  local fnt = font.getfont(id)
  local metadata = fnt.shared and fnt.shared.rawdata and
  fnt.shared.rawdata.metadata
  if not metadata then
    return ""
  end
  return metadata["familyname"]
end
lilypond['get_current_font_name'] =  function  ()
  return lilypond.get_font_name (font.current())
end
lilypond['get_font_file'] =  function (id)
  local fnt = font.getfont(id)
  return fnt.resources.filename
end
lilypond['get_current_font_file'] =  function ()
  return lilypond.get_font_file (font.current())
end
lilypond['get_font_dir'] =  function (id)
  local parts
  local filename = lilypond.get_font_file (id)
  parts = string.match(filename, "(.-)([^\\/]-)$")--$
  return parts
end
lilypond['get_current_font_dir'] =  function ()
  return lilypond.get_font_dir (font.current())
end
 return lilypond
-- 
--
-- End of file `tslilypond.lua'.
