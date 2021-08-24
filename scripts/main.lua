
lmc_assign_keyboard( 'G30' );
lmc.minimizeToTray = true;
lmc_minimize();
clear();

local config = {

    [ 45  ] = "insert",
    [ 36  ] = "home",
    [ 33  ] = "pageup",
    [ 46  ] = "delete",
    [ 35  ] = "end",
    [ 34  ] = "pagedown",
    [ 27  ] = "escape",
    [ 112 ] = "F1",
    [ 113 ] = "F2",
    [ 114 ] = "F3",
    [ 115 ] = "F4",
    [ 116 ] = "F5",
    [ 117 ] = "F6",
    [ 118 ] = "F7",
    [ 119 ] = "F8",
    [ 120 ] = "F9",
    [ 121 ] = "F10",
    [ 122 ] = "F11",
    [ 123 ] = "F12",
    [ 8   ] = "backspace",
    [ 220 ] = "backslash",
    [ 13  ] = "enter",
    [ 16  ] = "rShift",
    [ 17  ] = "rCtrl",
    [ 38  ] = "up",
    [ 37  ] = "left",
    [ 40  ] = "down",
    [ 39  ] = "right",
    [ 32  ] = "space",
    [ 186 ] = "semicolon",
    [ 222 ] = "singlequote",
    [ 190 ] = "period",
    [ 191 ] = "slash",
    [ 188 ] = "comma",
    [ 219 ] = "leftbracket",
    [ 221 ] = "rightbracket",
    [ 189 ] = "minus",
    [ 187 ] = "equals",
    [ 96  ] = "num0",
    [ 97  ] = "num1",
    [ 98  ] = "num2",
    [ 99  ] = "num3",
    [ 100 ] = "num4",
    [ 101 ] = "num5",
    [ 102 ] = "num6",
    [ 103 ] = "num7",
    [ 104 ] = "num8",
    [ 105 ] = "num9",
    [ 106 ] = "numMult",
    [ 107 ] = "numPlus",
    [ 108 ] = "numEnter",
    [ 109 ] = "numMinus",
    [ 110 ] = "numDelete",
    [ 111 ] = "numDiv",
    [ 144 ] = "numLock",
    [ 192 ] = "`",
    [ 9   ] = "tab",
    [ 20  ] = "capslock",
    [ 18  ] = "alt",
    --[255] = "printscreen" --these keys do not work

    [ string.byte( 'Q' ) ] = "q",
    [ string.byte( 'W' ) ] = "w",
    [ string.byte( 'E' ) ] = "e",
    [ string.byte( 'R' ) ] = "r",
    [ string.byte( 'T' ) ] = "t",
    [ string.byte( 'Y' ) ] = "y",
    [ string.byte( 'U' ) ] = "u",
    [ string.byte( 'I' ) ] = "i",
    [ string.byte( 'O' ) ] = "o",
    [ string.byte( 'P' ) ] = "p",
    [ string.byte( 'A' ) ] = "a",
    [ string.byte( 'S' ) ] = "s",
    [ string.byte( 'D' ) ] = "d",
    [ string.byte( 'F' ) ] = "f",
    [ string.byte( 'G' ) ] = "g",
    [ string.byte( 'H' ) ] = "h",
    [ string.byte( 'J' ) ] = "j",
    [ string.byte( 'K' ) ] = "k",
    [ string.byte( 'L' ) ] = "l",
    [ string.byte( 'Z' ) ] = "z",
    [ string.byte( 'X' ) ] = "x",
    [ string.byte( 'C' ) ] = "c",
    [ string.byte( 'V' ) ] = "v",
    [ string.byte( 'B' ) ] = "b",
    [ string.byte( 'N' ) ] = "n",
    [ string.byte( 'M' ) ] = "m",
    [ string.byte( '0' ) ] = "0",
    [ string.byte( '1' ) ] = "1",
    [ string.byte( '2' ) ] = "2",
    [ string.byte( '3' ) ] = "3",
    [ string.byte( '4' ) ] = "4",
    [ string.byte( '5' ) ] = "5",
    [ string.byte( '6' ) ] = "6",
    [ string.byte( '7' ) ] = "7",
    [ string.byte( '8' ) ] = "8",
    [ string.byte( '9' ) ] = "9",

}

local functions = {

    [ 'F1' ] = function() return 'F1' end,
    [ 'F2' ] = function() return 'F2' end,
    [ 'F3' ] = function() return 'F3' end,
    [ 'F4' ] = function() return 'F4' end,
    [ 'F5' ] = function() return 'F5' end,

}

local modifiers = {

    [ 'rCtrl'  ] = function() return 'CTRL'  end,
    [ 'rShift' ] = function() return 'SHIFT' end,
    [ 'alt'    ] = function() return 'ALT'   end,
    [ '`'      ] = function() return 'TILDE' end,
    
}


-- ^ = Control
-- % = Alt
-- + = Shift
-- # = Win
-- & = Tab

local actions = {

    -- =================================================================================================================== --
    -- # FUNCTIONS # ----------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

        [ 'F1' .. '' .. 'F1'            ] = function()  os.execute('start msg\\msg_f1.bat') print ( '# ACTION : [ FUNCTION 01 ]'      ) end,
        [ 'F2' .. '' .. 'F2'            ] = function()  os.execute('start msg\\msg_f2.bat') print ( '# ACTION : [ FUNCTION 02 ]'      ) end,
        [ 'F3' .. '' .. 'F3'            ] = function()  os.execute('start msg\\msg_f3.bat') print ( '# ACTION : [ FUNCTION 03 ]'      ) end,
        [ 'F4' .. '' .. 'F4'            ] = function()  os.execute('start msg\\msg_f4.bat') print ( '# ACTION : [ FUNCTION 04 ]'      ) end,
        [ 'F5' .. '' .. 'F5'            ] = function()  os.execute('start msg\\msg_f5.bat') print ( '# ACTION : [ FUNCTION 05 ]'      ) end,

    -- ------------------------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

    -- =================================================================================================================== --
    -- # FUNCTION 01 # --------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

        -- # SINGLE # ---------------------------------------------------------------------------------------------------

        [ 'F1' .. '' .. '1'             ] = function()  lmc_send_keys   ( '1'             ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F1' .. '' .. '2'             ] = function()  lmc_send_input  ( 177, 0, 0       ) print ( '# ACTION : [ PLAY/PAUSE ]'       ) end,
        [ 'F1' .. '' .. '3'             ] = function()  lmc_send_input  ( 179, 0, 0       ) print ( '# ACTION : [ PREVOUS ]'          ) end,
        [ 'F1' .. '' .. '4'             ] = function()  lmc_send_input  ( 176, 0, 0       ) print ( '# ACTION : [ NEXT ]'             ) end,
        [ 'F1' .. '' .. '5'             ] = function()  lmc_send_input  ( 174, 0, 0       ) print ( '# ACTION : [ VOL DOWN ]'         ) end,
        [ 'F1' .. '' .. '6'             ] = function()  lmc_send_input  ( 175, 0, 0       ) print ( '# ACTION : [ VOL UP ]'           ) end,

        [ 'F1' .. '' .. 'q'             ] = function()  lmc_send_keys   ( '^n'            ) print ( '# ACTION : [ CTRL + N ]'         ) end,
        [ 'F1' .. '' .. 'w'             ] = function()  lmc_send_keys   ( '^w'            ) print ( '# ACTION : [ CTRL + W ]'         ) end,
        [ 'F1' .. '' .. 'e'             ] = function()  lmc_send_keys   ( 'e'             ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F1' .. '' .. 'r'             ] = function()  lmc_send_keys   ( '^(%n)'         ) print ( '# ACTION : [ CTRL + ALT + N ]'   ) end,
        [ 'F1' .. '' .. 't'             ] = function()  lmc_send_keys   ( '{BACKSPACE}'   ) print ( '# ACTION : [ BACKSPACE ]'        ) end,

        [ 'F1' .. '' .. 'a'             ] = function()  lmc_send_keys   ( '^a'            ) print ( '# ACTION : [ CTRL + A ]'         ) end,
        [ 'F1' .. '' .. 's'             ] = function()  lmc_send_keys   ( '^s'            ) print ( '# ACTION : [ CTRL + S ]'         ) end,
        [ 'F1' .. '' .. 'd'             ] = function()  lmc_send_keys   ( 'd'             ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F1' .. '' .. 'f'             ] = function()  lmc_send_keys   ( '^f'            ) print ( '# ACTION : [ CTRL + F ]'         ) end,
        [ 'F1' .. '' .. 'g'             ] = function()  lmc_send_keys   ( 'g'             ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,

        [ 'F1' .. '' .. 'z'             ] = function()  lmc_send_keys   ( '^z'            ) print ( '# ACTION : [ CTRL + Z ]'         ) end,
        [ 'F1' .. '' .. 'x'             ] = function()  lmc_send_keys   ( '^x'            ) print ( '# ACTION : [ CTRL + X ]'         ) end,
        [ 'F1' .. '' .. 'c'             ] = function()  lmc_send_keys   ( '^c'            ) print ( '# ACTION : [ CTRL + C ]'         ) end,
        [ 'F1' .. '' .. 'v'             ] = function()  lmc_send_keys   ( '^v'            ) print ( '# ACTION : [ CTRL + V ]'         ) end,
        [ 'F1' .. '' .. 'b'             ] = function()  lmc_send_keys   ( '^/'            ) print ( '# ACTION : [ CTRL + / ]'         ) end,

        [ 'F1' .. '' .. 'tab'           ] = function()  lmc_send_keys   ( '{TAB}'         ) print ( '# ACTION : [ TAB ]'              ) end,
        [ 'F1' .. '' .. 'escape'        ] = function()  lmc_send_keys   ( '{ESC}'         ) print ( '# ACTION : [ ESC ]'              ) end,
        [ 'F1' .. '' .. 'space'         ] = function()  lmc_send_keys   ( '{ENTER}'       ) print ( '# ACTION : [ ENTER ]'            ) end,

        
        -- # CTRL +  # ---------------------------------------------------------------------------------------------------

        [ 'F1' .. 'CTRL' .. 'w'         ] = function()  lmc_send_keys   ( '%{F4}'         ) print ( '# ACTION : [ ALT + F4 ]'         ) end,
        [ 'F1' .. 'CTRL' .. 'f'         ] = function()  lmc_send_keys   ( '^h'            ) print ( '# ACTION : [ CTRL + H ]'         ) end,
        [ 'F1' .. 'CTRL' .. 'space'     ] = function()  lmc_send_keys   ( ' '             ) print ( '# ACTION : [ ENTER ]'            ) end,


        -- # SHIFT + # --------------------------------------------------------------------------------------------------

        [ 'F1' .. 'SHIFT' .. 'tab'      ] = function()  lmc_send_keys   ( '+{TAB}'        ) print ( '# ACTION : [ SHIFT + TAB ]'      ) end,

        
        -- # TILDE + # --------------------------------------------------------------------------------------------------

        [ 'F1' .. 'TILDE' .. '1'        ] = function()  io.popen        ( 'code'          ) print ( '# ACTION : [ OPEN VSCODE ]'      ) end,
        [ 'F1' .. 'TILDE' .. '2'        ] = function()  lmc_spawn       ( 'notepad'       ) print ( '# ACTION : [ OPEN NOTEPAD ]'     ) end,
        
    -- ------------------------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

    -- =================================================================================================================== --
    -- # FUNCTION 02 # --------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

        -- # SINGLE # ---------------------------------------------------------------------------------------------------

        [ 'F2' .. '' .. '1'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F2' .. '' .. '2'             ] = function()  lmc_send_input  ( 177, 0, 0       ) print ( '# ACTION : [ PLAY/PAUSE ]'       ) end,
        [ 'F2' .. '' .. '3'             ] = function()  lmc_send_input  ( 179, 0, 0       ) print ( '# ACTION : [ PREVOUS ]'          ) end,
        [ 'F2' .. '' .. '4'             ] = function()  lmc_send_input  ( 176, 0, 0       ) print ( '# ACTION : [ NEXT ]'             ) end,
        [ 'F2' .. '' .. '5'             ] = function()  lmc_send_input  ( 174, 0, 0       ) print ( '# ACTION : [ VOL DOWN ]'         ) end,
        [ 'F2' .. '' .. '6'             ] = function()  lmc_send_input  ( 175, 0, 0       ) print ( '# ACTION : [ VOL UP ]'           ) end,

        [ 'F2' .. '' .. 'q'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ CTRL + N ]'         ) end,
        [ 'F2' .. '' .. 'w'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ CTRL + W ]'         ) end,
        [ 'F2' .. '' .. 'e'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F2' .. '' .. 'r'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ CTRL + ALT + N ]'   ) end,
        [ 'F2' .. '' .. 't'             ] = function()  lmc_send_keys   ( '{BACKSPACE}'   ) print ( '# ACTION : [ BACKSPACE ]'        ) end,

        [ 'F2' .. '' .. 'a'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ A ]'                ) end,
        [ 'F2' .. '' .. 's'             ] = function()  lmc_send_keys   ( '^s'            ) print ( '# ACTION : [ CTRL + S ]'         ) end,
        [ 'F2' .. '' .. 'd'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ NOT CONFIGURED ]'   ) end,
        [ 'F2' .. '' .. 'f'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ CTRL + F ]'         ) end,
        [ 'F2' .. '' .. 'g'             ] = function()  lmc_send_keys   ( 'a'             ) print ( '# ACTION : [ A ]'                ) end,

        [ 'F2' .. '' .. 'z'             ] = function()  lmc_send_keys   ( '^z'            ) print ( '# ACTION : [ CTRL + Z ]'         ) end,
        [ 'F2' .. '' .. 'x'             ] = function()  lmc_send_keys   ( ''              ) print ( '# ACTION : [ CTRL + X ]'         ) end,
        [ 'F2' .. '' .. 'c'             ] = function()  lmc_send_keys   ( '^c'            ) print ( '# ACTION : [ CTRL + C ]'         ) end,
        [ 'F2' .. '' .. 'v'             ] = function()  lmc_send_keys   ( '%v'            ) print ( '# ACTION : [ ALT + V  ]'         ) end,
        [ 'F2' .. '' .. 'b'             ] = function()  lmc_send_keys   ( 'b'             ) print ( '# ACTION : [ CTRL + / ]'         ) end,

        [ 'F2' .. '' .. 'tab'           ] = function()  lmc_send_keys   ( '{TAB}'         ) print ( '# ACTION : [ TAB ]'              ) end,
        [ 'F2' .. '' .. 'escape'        ] = function()  lmc_send_keys   ( '{ESC}'         ) print ( '# ACTION : [ ESC ]'              ) end,
        [ 'F2' .. '' .. 'space'         ] = function()  lmc_send_keys   ( ' '             ) print ( '# ACTION : [ SPACE ]'            ) end,

        
        -- # CTRL + # ---------------------------------------------------------------------------------------------------

        [ 'F2' .. 'CTRL' .. 'v'         ] = function()  lmc_send_keys   ( '^v'            ) print ( '# ACTION : [ CTRL + V ]'         ) end,
        [ 'F2' .. 'CTRL' .. 'z'         ] = function()  lmc_send_keys   ( '^(+z)'         ) print ( '# ACTION : [ CTRL + SHIFT + Z ]' ) end,

        -- # SHIFT + # --------------------------------------------------------------------------------------------------

        [ 'F2' .. 'SHIFT' .. 'tab'      ] = function()  lmc_send_keys   ( '+{TAB}'        ) print ( '# ACTION : [ SHIFT + TAB ]'      ) end,

        
        -- # TILDE + # --------------------------------------------------------------------------------------------------

        [ 'F2' .. 'TILDE' .. '1'        ] = function()  io.popen        ( 'code'          ) print ( '# ACTION : [ OPEN VSCODE ]'      ) end,
        [ 'F2' .. 'TILDE' .. '2'        ] = function()  lmc_spawn       ( 'notepad'       ) print ( '# ACTION : [ OPEN NOTEPAD ]'     ) end,
        
    -- ------------------------------------------------------------------------------------------------------------------- --
    -- =================================================================================================================== --

        [ 'default' ] = function() print ( '# ACTION : [ NOT CONFIGURED ]' ) end,

}

local btnFUNCTIONS = 'F1'
local btnMODIFIERS  = ''

lmc_set_handler( 'G30', function( button, direction )

    if ( direction == 1 ) then

        clear()

        ::FUNCTMOD::
        if ( functions [ config [ button ] ] ) then btnFUNCTIONS = functions [ config [ button ] ] () goto ACTIONS end
        if ( modifiers [ config [ button ] ] ) then btnMODIFIERS = modifiers [ config [ button ] ] () goto ACTIONS end

        ::ACTIONS::
        print ( '# ==================== #' )
        print ( '# FUNCTI : [ ' .. btnFUNCTIONS .. ' ]'     )
        print ( '# MODIFI : [ ' .. btnMODIFIERS .. ' ]'     )
        print ( '# BUTTON : [ ' .. config[ button ] .. ' ]' )
        
        if ( actions [ btnFUNCTIONS .. btnMODIFIERS .. config[ button ] ] )
        then actions [ btnFUNCTIONS .. btnMODIFIERS .. config[ button ] ] () goto END
        else actions [ 'default' ] ()                                        goto END
        end

        ::END::
        print ( '# ==================== #' )
        sleep( 50 );

    elseif ( direction == 0 ) then

        if ( modifiers [ config[ button ] ] ) then btnMODIFIERS = '' end

    end

end )
