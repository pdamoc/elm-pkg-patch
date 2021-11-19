module Main exposing (main)

import Extra
import Html exposing (..)


main =
    text <| Extra.log "hello" "world"
