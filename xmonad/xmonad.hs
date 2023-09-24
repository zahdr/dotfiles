import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Util.SpawnOnce
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Util.Ungrab
import XMonad.Util.Loggers

main :: IO ()
main = xmonad $ ewmhFullscreen . ewmh $ xmobarProp $ myConfig

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
