{-
   OpenAPI Petstore
   This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

   The version of the OpenAPI document: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Order_ exposing (Order_, Status(..), decoder, encode, encodeWithTag, toString)

import DateTime exposing (DateTime)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode


{-| An order for a pets from the pet store
-}
type alias Order_ =
    { id : Maybe (Int)
    , petId : Maybe (Int)
    , quantity : Maybe (Int)
    , shipDate : Maybe (DateTime)
    , status : Maybe (Status)
    , complete : Maybe (Bool)
    }


type Status
    = Placed
    | Approved
    | Delivered



decoder : Decoder Order_
decoder =
    decode Order_
        |> optional "id" (Decode.nullable Decode.int) Nothing
        |> optional "petId" (Decode.nullable Decode.int) Nothing
        |> optional "quantity" (Decode.nullable Decode.int) Nothing
        |> optional "shipDate" (Decode.nullable DateTime.decoder) Nothing
        |> optional "status" (Decode.nullable statusDecoder) Nothing
        |> optional "complete" (Decode.nullable Decode.bool) (Just False)



encode : Order_ -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> Order_ -> Encode.Value
encodeWithTag (tagField, tag) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : Order_ -> List (String, Encode.Value)
encodePairs model =
    [ ( "id", Maybe.withDefault Encode.null (Maybe.map Encode.int model.id) )
    , ( "petId", Maybe.withDefault Encode.null (Maybe.map Encode.int model.petId) )
    , ( "quantity", Maybe.withDefault Encode.null (Maybe.map Encode.int model.quantity) )
    , ( "shipDate", Maybe.withDefault Encode.null (Maybe.map DateTime.encode model.shipDate) )
    , ( "status", Maybe.withDefault Encode.null (Maybe.map encodeStatus model.status) )
    , ( "complete", Maybe.withDefault Encode.null (Maybe.map Encode.bool model.complete) )
    ]



toString : Order_ -> String
toString =
    Encode.encode 0 << encode




statusDecoder : Decoder Status
statusDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "placed" ->
                        Decode.succeed Placed

                    "approved" ->
                        Decode.succeed Approved

                    "delivered" ->
                        Decode.succeed Delivered

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



encodeStatus : Status -> Encode.Value
encodeStatus model =
    case model of
        Placed ->
            Encode.string "placed"

        Approved ->
            Encode.string "approved"

        Delivered ->
            Encode.string "delivered"




