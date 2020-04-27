module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

bottlesOf : String -> Int -> String
bottlesOf content amount =
  Debug.toString amount ++ " bottles of " ++ content ++ " on the wall."

sayHello : String -> String
sayHello name = 
  "Hello, " ++ name ++ "!"

main = 
  div []
    [
        div [style "color" "#CCCCCC"
        , style "font-size" "3em"
        , style "padding" "10px"] [
            text(sayHello "Functional Elm")
        ]
        , div [] [
            text(bottlesOf "juice" 99)
        ]
        , div [] [
            -- (bottlesOf "wine") return function with Int -> String
            -- then invoke previous function with arguments 9
            text((bottlesOf "wine") 9)
        ]
    ]
  