module Picshare exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

baseUrl : String
baseUrl = "https://programming-elm.com/"

initialModel : {url: String, caption: String}
initialModel = 
  { url = baseUrl ++ "1.jpg"
  , caption = "Surfing"}

view : {url: String, caption: String} -> Html msg
view model = 
  div []
    [ div [class "header"]
      [ h1 [][text "Picshare"]]
    , div [class "content-flow"]
      [ viewDetailedPhoto model ]
    ]

viewDetailedPhoto : {url: String, caption: String} -> Html msg
viewDetailedPhoto model = 
  div [class "detailed-photo"]
    [ img [src model.url][]
    , div [class "photo-info"]
      [h2 [class "caption"][text model.caption]]
    ]

main : Html msg
main = 
  view initialModel