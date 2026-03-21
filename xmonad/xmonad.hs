import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Layout.Spacing
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.TaffybarPagerHints (pagerHints)

import Graphics.X11 (xK_s)

import XMonad.Matugen
  ( primary
  , secondary
  , outline
  , outlineVariant
  )

myLayoutHook = avoidStruts $ spacingWithEdge 5 $ layoutHook def

myKeys =
  [ ("M-<Return>", spawn "st")
  , ("M-r", spawn "rofi -show drun")
  , ("M-S-r", spawn "xmonad --recompile" >> spawn "xmonad --restart")
  , ("M-q", kill)
  , ("M-b", spawn "firefox")

  -- Volume keys
  , ("<XF86AudioRaiseVolume>", spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+")
  , ("<XF86AudioLowerVolume>", spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")
  , ("<XF86AudioMute>",        spawn "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
  ]

main = xmonad
     $ pagerHints
     $ docks
     $ def
       { modMask            = mod4Mask
       , terminal           = "st"
       , borderWidth        = 2
       , normalBorderColor  = outline
       , focusedBorderColor = primary
       , layoutHook         = myLayoutHook
       }
     `additionalKeysP` myKeys
