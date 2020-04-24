module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

main = 
  div []
   [ h1 [
       style "color" "#CCCCCC"
   ] [
       text "My Grocery List"
   ],
     ul [] [
         li [] [ text "Black Beans" ],
         li [] [ text "Limes" ],
         li [] [ text "Greek Yogurt" ], 
         li [] [ text "Cilantro" ], 
         li [] [ text "Honey" ], 
         li [] [ text "Sweet Potatoes" ], 
         li [] [ text "Cumin" ], 
         li [] [ text "Chili Powder" ], 
         li [] [ text "Quinoa" ]
     ]]