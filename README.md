# vim-airline-theme-ansi_focus
A vim vim-airline theme aimed at making it more obvious when you are in Normal mode (or, more importanty, not), using ANSI colours.

## Screenshots
![Normal](png/normal.png)
![Insert](png/insert.png)
![Replace](png/replace.png)
![Visual](png/visual.png)
![Cmdline](png/cmdline.png)
![Inactive](png/inactive.png)

## Installation
*Prerequisite: Vim and vim-airline must be installed and working*
- Download ansi\_focus.vim and copy to ~/.vim/autoload/airline/themes
- Edit your .vimrc file by adding `let g:airline_theme='ansi_focus.vim'`
- [Optional] Also add `let g:airline_section_warning=""` 

## Miscellaneous observations about modes
One of this vim-airline theme's aims is to assist visually with reminding of the mode you are in. I find that it is really easy to type text/commands thinking you are in one mode when in another. This colour scheme assists in that Normal is Black/White and the Insert/Replace modes are vivid Blue/Magenta colours. To keep it really simple, the colours used are the SYSTEM colours / eight ANSI colours plus their 'bright' versions. (I also use `let g:airline_section_warning = ""` to hide the hugely "real estate"-hogging area, which, for me, detracts more than it assists.)

The colour groups reflect Vim's BASIC modes, refer `:help vim-modes` and `:help mode()`. The ADDITIONAL modes generally display as expected provided airline itself (`airline#check_mode`) is correct and: a) Vim itself sends the mode code, which is not always the case (operator-pending modes the prime examples), and b) Vim has not had more modes added (which is noted as a possibility in the future the help files). 

### BASIC modes (*plus* Replace mode)
These are outlined in the table below.

| BASIC mode | Area | GUI                            | Terminal                       |
|------------|:----:|--------------------------------|--------------------------------|
| Normal     | Mode | Black with Bright White text   | Black with Bright White text   |
|            | Rest | Black with Bright White text   | Bright White with Black text   |
| Insert     | Mode | Blue with Bright White text    | Blue with Bright White text    |
|            | Rest | Bright Cyan with Blue text     | Bright Cyan with Blue text     |
| Replace    | Mode | Magenta with Bright White text | Magenta with Bright White text |
|            | Rest | BrightMagenta with Black text  | BrightMagenta with Black text  |
| Visual     | Mode | 'White' with Black text        | 'White' with Black text        |
|            | Rest | Grey with Black text           | Grey with Black text           |
| Cmdline    | Mode | Black with Bright Green text   | Black with Green text          |
|            | Rest | Black with Bright Green text   | Green with Black text          |
| Inactive   | All  | 'White' with Grey text         | 'White' with Black text        |

### ADDITIONAL modes 

#### Operator-pending modes
These are usually treated like Normal, but more correctly, whatever mode they were in when the operator is awaited. E.g., you may be in Normal mode and enter 10 ... awaiting input ... if j is entered, the cursor will be moved down by 10 lines and there was no change to the mode, which coincidentally is 'correct' because Normal Operator-Pending would be displayed as Normal reflecting its BASIC mode group. However, note the operator-pending mode code is not sent so cannot be read by airline. So, if you had been in Visual mode it is not 'correct' because the operator is awaited yet the appliable visual mode (v, V or ^V) will remain as the current mode even though a *Normal* operator is pending. (Try this: from Normal mode, V10j to see this in action - VISUAL remains displayed throughout even though once 1 and 0 have been pressed Vim awaits an operator.) 

#### Virtual Replace mode (`gR` from Normal mode)
Displays as REPLACE, which is as expected since it is similar to Replace mode / a variant.

#### Insert Normal mode (`\<C-o>` from Normal mode)
Should display as NORMAL, reflecting it is, albeit temporarily, in Normal mode. 

#### Terminal-Normal mode (`\<C-w>N` from Terminal-Job mode)
Displays like Terminal-Job mode but with 'N' following the mode text in the status line.

#### Insert Visual mode (`\<C-o>v` or `V` or `^V` from Insert mode)
Displays the applicable visual (character/line/block) mode.

#### Insert Select mode: (`\<C-o> gh`, or `gH`, or `g^H` from Insert mode)
Displays the applicable Select (character/line/block) mode. 

