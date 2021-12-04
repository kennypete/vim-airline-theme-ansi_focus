" ansi_focus vim-airline template by kennypete (http://github.com/kennypete)
"
" This vim-airline template aims to visually assist with determining
" the mode you are in. I find that it is really easy to type text/commands
" thinking you are in one mode when in another. This colour scheme assists in
" that Normal is Black/White and the Insert/Replace modes are mixed, vivid colours.
" To keep it really simple, the colours used are the SYSTEM colours / eight 
" ANSI colours plus their 'bright' versions.
" 
" (I also use 
"   let g:airline_section_warning = ""
" to hide the hugely 'real estate'-hogging area)
"
" The setups by Mode, noting that although there are only six here, 
" the many other Vim modes all fall under these, so, e.g., Select
" mode has the same colour scheme as Visual. Another example is the 
" temporary -- (insert) -- mode, which enables one Normal command to be
" entered when in Insert mode by using <C-o> when in Insert mode: it 
" dislays like Insert mode. And yet another is 'r' mode, which appears 
" when doing a 'gc' global confirm search/replace: its colours are as for
" Command mode (provided the airline.vim file's airline#check_mode 
" function is set to handle all possible modes correctly.

"          GUI                                   Terminal
" Normal:  Mode[ Black with Bright White text    Black with Bright White text   
"          Rest[ Black with Bright White text    Bright White with Black text    
"
" Insert:  Mode[ Blue with Bright White text     Blue with Bright White text   
"          Rest[ Bright Cyan with Blue text      Bright Cyan with Blue text
"
" Replace: Mode[ Magenta with Bright White text  Magenta with Bright White text   
"          Rest[ BrightMagenta with Black text   BrightMagenta with Black text

" Visual:  Mode[ 'White' with Black text         'White' with Black text   
"          Rest[ Grey with Black text            Grey with Black text  

" Inactive: All[ 'White' with Grey text          'White' with Black text   

" Command : Mode[ Black with Bright Green text   Black with Green text   
"    line   Rest[ Black with Bright Green text   Green with Black text    

let g:airline_left_sep='◤'

let g:airline#themes#ansi_focus#palette = {}

" 0  Black  #000000  rgb(0,0,0)
let t:tBlack = 0
let t:gBlack = "#000000"

" 1  Red  #800000  rgb(128,0,0)
let t:tRed = 1
let t:gRed = "#282828"

" 2  Green  #008000  rgb(0,128,0)
let t:tGreen = 2
let t:gGreen = "#008000"

" 3  Yellow  #808000  rgb(128,128,0)
let t:tYellow = 3
let t:gYellow = "#808000"

" 4  Blue  #000080  rgb(0,0,128)
let t:tBlue = 4
let t:gBlue = "#000080"

" 5  Magenta  #800080  rgb(128,0,128)
let t:tMagenta = 5
let t:gMagenta = "#800080"

" 6  Cyan  #008080  rgb(0,128,128)
let t:tCyan = 6
let t:gCyan = "#008080"

" 7  White  #c0c0c0  rgb(192,192,192)
let t:tWhite = 7
let t:gWhite = "#c0c0c0"

" 8  BrightBlack (Grey)  #808080  rgb(128,128,128)
let t:tGrey = 8
let t:gGrey = "#808080"

" 9  BrightRed  #ff0000  rgb(255,0,0)
let t:tBrightRed = 9
let t:gBrightRed = "#ff0000"

" 10 BrightGreen  #00ff00  rgb(0,255,0)
let t:tBrightGreen = 10
let t:gBrightGreen = "#00ff00"

" 11 BrightYellow  #ffff00  rgb(255,255,0)
let t:tBrightYellow = 11
let t:gBrightYellow = "#ffff00"

" 12 BrightBlue  #0000ff  rgb(0,0,255)
let t:tBrightBlue = 12
let t:gBrightBlue = "#0000ff"

" 13 BrightMagenta  #ff00ff  rgb(255,0,255)
let t:tBrightMagenta = 13
let t:gBrightMagenta = "#ff00ff"

" 14 BrightCyan  #00ffff  rgb(0,255,255)
let t:tBrightCyan = 14
let t:gBrightCyan = "#00ffff"

" 15 BrightWhite  #ffffff  rgb(255,255,255)
let t:tBrightWhite = 15
let t:gBrightWhite = "#ffffff"

" L1 Mode block and Position block
" L2 File Type block 
" L3 File Name block    
" Foreground GUI, Background GUI, Foreground Terminal, Background Terminal 
" -- NORMAL --
let t:N1   = [ t:gBrightWhite, t:gBlack, t:tBrightWhite, t:tBlack ]
let t:N2   = [ t:gBrightWhite, t:gBlack, t:tBlack, t:tBrightWhite ]
let t:N3   = [ t:gBrightWhite, t:gBlack, t:tBlack, t:tBrightWhite ]
let g:airline#themes#ansi_focus#palette.normal = airline#themes#generate_color_map(t:N1, t:N2, t:N3)
" -- INSERT -- 
let t:I1   = [ t:gBrightWhite, t:gBlue, t:tBrightWhite, t:tBlue ]
let t:I2   = [ t:gBlue, t:gBrightCyan, t:tBlue, t:tBrightCyan ]
let t:I3   = [ t:gBlue, t:gBrightCyan, t:tBlue, t:tBrightCyan ]
let g:airline#themes#ansi_focus#palette.insert = airline#themes#generate_color_map(t:I1, t:I2, t:I3)
" -- REPLACE --
let t:R1   = [ t:gBrightWhite, t:gMagenta, t:tBrightWhite, t:tMagenta ]
let t:R2   = [ t:gBlack, t:gBrightMagenta, t:tBlack, t:tBrightMagenta ]
let t:R3   = [ t:gBlack, t:gBrightMagenta, t:tBlack, t:tBrightMagenta ]
let g:airline#themes#ansi_focus#palette.replace = airline#themes#generate_color_map(t:R1, t:R2, t:R3)
" -- VISUAL --
let t:V1   = [ t:gBlack, t:gWhite, t:tBlack, t:tWhite ]
let t:V2   = [ t:gBlack, t:gGrey, t:tBlack, t:tGrey ]
let t:V3   = [ t:gBlack, t:gGrey, t:tBlack, t:tGrey ]
let g:airline#themes#ansi_focus#palette.visual = airline#themes#generate_color_map(t:V1, t:V2, t:V3)
" || inactive || (for split panes, etc.)
let t:X1   = [ t:gWhite, t:gGrey, t:tWhite, t:tGrey ]
let t:X2   = [ t:gWhite, t:gGrey, t:tWhite, t:tGrey ]
let t:X3   = [ t:gWhite, t:gGrey, t:tWhite, t:tGrey ]
let g:airline#themes#ansi_focus#palette.inactive = airline#themes#generate_color_map(t:X1, t:X2, t:X3)
" || command ||
let t:C1   = [ t:gBrightGreen, t:gBlack, t:tGreen, t:tBlack ]
let t:C2   = [ t:gBrightGreen, t:gBlack, t:tBlack, t:tGreen ]
let t:C3   = [ t:gBrightGreen, t:gBlack, t:tBlack, t:tGreen ]
let g:airline#themes#ansi_focus#palette.commandline = airline#themes#generate_color_map(t:C1, t:C2, t:C3)
