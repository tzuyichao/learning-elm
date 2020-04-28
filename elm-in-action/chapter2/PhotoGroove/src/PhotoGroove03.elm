module PhotoGroove exposing (main)

import Html exposing (div, h1, img, Html, text)
import Html.Attributes exposing (..)
import List exposing (..)

urlPrefix : String
urlPrefix = "http://elm-in-action.com/"

initialModel : {photos: List {url: String}, selectedUrl: String}
initialModel =
  { photos = 
    [ {url = "1.jpeg"}
    , {url = "2.jpeg"}
    , {url = "3.jpeg"}
    ]
  , selectedUrl = "1.jpeg"
  }

view : {photos: List {url: String}, selectedUrl: String} -> Html msg
view model = 
  div [class "content"]
      [ h1 [][text "Photo Groove"]
      , div [id "thumbnails"] (List.map (\photo -> viewThumbnail model.selectedUrl photo) model.photos)
      , img [class "large", src (urlPrefix ++ "large/" ++ model.selectedUrl)][]
      ]

viewThumbnail : String -> {url: String} -> Html msg
viewThumbnail selectedUrl thumb = 
  if selectedUrl == thumb.url then
    img [ src (urlPrefix ++ thumb.url)
        , class "selected"][]
  else
    img [src (urlPrefix ++ thumb.url)][]

main : Html msg
main =
  view initialModel