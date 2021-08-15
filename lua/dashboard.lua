local g = vim.g

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
      '              ▄▄▄▄▄▄▄▄▄            ',
      '           ▄█████████████▄          ',
      '   █████  █████████████████  █████  ',
      '   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ',
      '    █████▄  ▀███▄   ▄███▀  ▄█████    ',
      '    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ',
      '     ███▄▀███▄  ▀███▀  ▄███▀▄███    ',
      '     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ',
      '      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ',
      '       ▀███▄▀██ █████ ██▀▄███▀      ',
      '      █▄ ▀█████ █████ █████▀ ▄█      ',
      '      ███        ███        ███      ',
      '      ███▄    ▄█ ███ █▄    ▄███      ',
      '      █████ ▄███ ███ ███▄ █████      ',
      '      █████ ████ ███ ████ █████      ',
      '      █████ ████▄▄▄▄▄████ █████      ',
      '       ▀███ █████████████ ███▀      ',
      '         ▀█ ███ ▄▄▄▄▄ ███ █▀        ',
      '            ▀█▌▐█████▌▐█▀            ',
      '               ███████              ',
}
-- g.dashboard_custom_header = {
-- "   .                                             ", 
-- "  -      ::                                   .   ",
-- " *.   :+=.                               .    --  ",
-- "+=  .**.                                  :-   +- ",
-- "#= =#=                                     :*. :#:",
-- "+#*#+                                       ** .#+",
-- " +##:                                       *# :##",
-- "  -#-                                   :: -##*###",
-- "   =#.                                  +: .####*:",
-- "  . #*      .:                     :    +=  +##=  ",
-- "  - *#     -+                     *=    :#-:##:   ",
-- "  + =#*   :#.        -       :    =#.    =##*.    ",
-- "  :+:-*#- =#:       .+       .+    ##    .#*.     ",
-- "   .+#####+##:      *=        +#  =#+   .*#.      ",
-- "      .:-=+*##*-.   +#.       =#+####*+**+.       ",
-- "             :=*##*+=##-    -*###*=:...           ",
-- "             =....:-=####-.*###*=::.. =.          ",
-- "              =       :::::::-.      ::           ",
-- "               ::.                 .:.            ",
-- "                  ..            ..                ",
-- "                    .          .                  ",
-- "                    +:        :+                  ",
-- "                 ..  -.      .- .                 ",
-- "                 -   .=      =.:-                 ",
-- "                 -    +.     + -.                 ",
-- "                 =    .=.  .=.  -                 ",
-- "                 -:+-            =                ",
-- "                  =-.           .-                ",
-- "                   .-          .-                 ",
-- "                    -.        ..                  ",
-- "                     ::   . ..                    ",
-- "                       ::.:     ",
-- }

g.dashboard_custom_section = {
    a = {description = {"  Load Last Session         SPC S l"}, command = "SessionLoad"},
    b = {description = {"  find File                 SPC f  "}, command = "Telescope find_files"},
    c = {description = {"  Recents                   SPC s o"}, command = "Telescope oldfiles"},
    d = {description = {"  Find Word                 SPC s t"}, command = "Telescope live_grep"},
    e = {description = {"洛 New File                  SPC f b"}, command = "DashboardNewFile"},
    f = {description = {"  Bookmarks                 SPC s m"}, command = "Telescope marks"},
}

  -- vim.g.dashboard_preview_command = 'cat'
  -- vim.g.dashboard_preview_pipeline = 'cat'
  -- vim.g.dashboard_preview_file = '~/.config/nvim/sunjon.cat'
  -- vim.g.dashboard_preview_file_height = 12
  -- vim.g.dashboard_preview_file_width = 80
