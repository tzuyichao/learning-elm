module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)

main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model = 
  { name : String
  , password : String
 , passwordAgain : String }

init : Model
init = 
  Model "" "" ""

type Msg
  = NameMT String
  | PasswordMT String
  | PasswordAgainMT String

update : Msg -> Model -> Model
update msg model =
  case msg of
    NameMT name ->
      { model | name = name }
    PasswordMT password -> 
      { model | password = password }
    PasswordAgainMT password ->
      { model | passwordAgain = password }

view : Model -> Html Msg
view model =
  div []
    [
        viewInput "text" "Name" model.name NameMT,
        viewInput "password" "Password" model.password PasswordMT,
        viewInput "password" "Re-enter Password" model.passwordAgain PasswordAgainMT,
        viewValidation model
    ]

viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ][]

viewValidation: Model -> Html msg 
viewValidation model =
  if model.password == model.passwordAgain then
    div[ style "color" "green"] [text "OK"]
  else
    div [ style "color" "red"] [text "Passwords do not match!"]