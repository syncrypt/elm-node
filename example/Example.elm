module Example exposing (main)

import Platform
import Platform.Cmd as Cmd
import Platform.Sub as Sub
import Task
import Node.Console
import Node.Process


type alias Model =
    ()


type alias Msg =
    ()


main : Program Never Model Msg
main =
    Platform.program
        { init =
            ( ()
            , Task.perform
                (\_ -> ())
                (Node.Console.log <|
                    "Hello Elm world!\n"
                        ++ "Args: "
                        ++ toString Node.Process.args
                )
            )
        , update = update
        , subscriptions = subscriptions
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    () ! [ Cmd.none ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
