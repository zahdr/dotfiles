import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Util.EZConfig
import XMonad.Util.Loggers
import XMonad.Util.SpawnOnce
import XMonad.Util.Ungrab

main :: IO ()
main =  xmonad 
        . ewmhFullscreen 
        . ewmh 
        . withEasySB (statusBarProp "xmobar" (pure myXmobarPP)) defToggleStrutsKey
        $ myConfig 

myConfig = def
    { terminal              = "kitty"
    , modMask               = mod4Mask
    , borderWidth           = 0
    , normalBorderColor     = "black"
    , focusedBorderColor    = "red"
    , manageHook            = myManageHook
    , startupHook           = myStartupHook
    }
   `additionalKeysP`
    [ ("M-e"   , spawn "thunar")
    , ("M-S-t" , spawn "deepin-screenshot")
    , ("M-f"   , spawn "firefox")
    , ("M-c"   , spawn "code")
    ]


myXmobarPP :: PP
myXmobarPP = def 
    { ppSep             = "   •   "
    , ppOrder           = \[ws, l, t] -> [ws, t]
    , ppCurrent         = xmobarColor "lightblue" ""  . wrap "[" "]"
    , ppHidden          = xmobarColor "white" "" . wrap "" ""
    , ppHiddenNoWindows = xmobarColor "gray" "" . wrap "" ""
    , ppUrgent          = xmobarColor "red" "" . wrap (xmobarColor "yellow" "" "!") (xmobarColor "yellow" "" "!")
    }


myManageHook :: ManageHook
myManageHook = composeAll
    [ className =? "wine"           --> doFullFloat
    , className =? "steamwebhelper" --> doFloat
    , isDialog                      --> doFloat
    , isFullscreen                  --> doFullFloat
    ]



myStartupHook :: X ()
myStartupHook = do
  spawnOnce "xsetroot -cursor_name left_ptr"
  spawnOnce "stalonetray"
  spawnOnce "feh --bg-fill --no-fehbg ~/.config/xmonad/wallpaper.png"
  spawnOnce "xrandr --output DP-0 --mode 1920x1080 --rate 144"
