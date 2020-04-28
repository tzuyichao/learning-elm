module PhotoGroove exposing (main)

import Html exposing (div, h1, img, Html, text)
import Html.Attributes exposing (..)
import List exposing (..)

urlPrefix : String
urlPrefix = "http://elm-in-action.com/"

initialModel : List {url: String}
initialModel =
  [ {url = "1.jpeg"}
  , {url = "2.jpeg"}
  , {url = "3.jpeg"}
  ]

view : List {url: String} -> Html msg
view model = 
  div [class "content"]
      [ h1 [][text "Photo Groove"]
      , div [id "thumbnails"] (List.map viewThumbnail model)
      ]

viewThumbnail thumb = 
  img [src (urlPrefix ++ thumb.url)][]

main : Html msg
main =
  view initialModel