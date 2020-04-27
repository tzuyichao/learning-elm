module Main exposing (..)

import Html exposing (..)

bottlesOf : String -> Int -> String
bottlesOf content amount =
  Debug.toString amount ++ " bottles of " ++ content ++ " on the wall."

sayHello : String -> String
sayHello name = 
  "Hello, " ++ name ++ "!"

main = 
  div []
    [
        div [] [
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
  