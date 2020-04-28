module PhotoGroove exposing (main)

import Html exposing (div, h1, img, Html, text)
import Html.Attributes exposing (..)

view : String -> Html msg
view model = 
  div [class "content"]
      [ h1 [][text "Photo Groove"]
      , div [id "thumbnails"]
          [img [src "http://elm-in-action.com/1.jpeg"][]
          ,img [src "http://elm-in-action.com/2.jpeg"][]
          ,img [src "http://elm-in-action.com/3.jpeg"][]
          ]
      ]

main : Html msg
main =
  view "no model yet"