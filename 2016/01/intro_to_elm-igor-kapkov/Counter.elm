module Counter (..) where

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
  Int



-- UPDATE


type Action
  = Increment
  | Decrement


update : Action -> Model -> Model
update action model =
  case action of
    Increment ->
      model + 1

    Decrement ->
      model - 1



-- VIEW


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ button [ onClick address Decrement ] [ text "-" ]
    , span [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]
