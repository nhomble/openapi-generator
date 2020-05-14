{-
   OpenAPI Petstore

   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI Version: 3.0.0
   OpenAPI Petstore API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OpenAPIPetstore.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OpenAPIPetstore.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import OpenAPIPetstore.Model
import OpenAPIPetstore.Core


-- * AdditionalPropertiesClass

-- | 'additionalPropertiesClassMapProperty' Lens
additionalPropertiesClassMapPropertyL :: Lens_' AdditionalPropertiesClass (Maybe (Map.Map String Text))
additionalPropertiesClassMapPropertyL f AdditionalPropertiesClass{..} = (\additionalPropertiesClassMapProperty -> AdditionalPropertiesClass { additionalPropertiesClassMapProperty, ..} ) <$> f additionalPropertiesClassMapProperty
{-# INLINE additionalPropertiesClassMapPropertyL #-}

-- | 'additionalPropertiesClassMapOfMapProperty' Lens
additionalPropertiesClassMapOfMapPropertyL :: Lens_' AdditionalPropertiesClass (Maybe (Map.Map String (Map.Map String Text)))
additionalPropertiesClassMapOfMapPropertyL f AdditionalPropertiesClass{..} = (\additionalPropertiesClassMapOfMapProperty -> AdditionalPropertiesClass { additionalPropertiesClassMapOfMapProperty, ..} ) <$> f additionalPropertiesClassMapOfMapProperty
{-# INLINE additionalPropertiesClassMapOfMapPropertyL #-}



-- * Animal

-- | 'animalClassName' Lens
animalClassNameL :: Lens_' Animal (Text)
animalClassNameL f Animal{..} = (\animalClassName -> Animal { animalClassName, ..} ) <$> f animalClassName
{-# INLINE animalClassNameL #-}

-- | 'animalColor' Lens
animalColorL :: Lens_' Animal (Maybe Text)
animalColorL f Animal{..} = (\animalColor -> Animal { animalColor, ..} ) <$> f animalColor
{-# INLINE animalColorL #-}



-- * ApiResponse

-- | 'apiResponseCode' Lens
apiResponseCodeL :: Lens_' ApiResponse (Maybe Int)
apiResponseCodeL f ApiResponse{..} = (\apiResponseCode -> ApiResponse { apiResponseCode, ..} ) <$> f apiResponseCode
{-# INLINE apiResponseCodeL #-}

-- | 'apiResponseType' Lens
apiResponseTypeL :: Lens_' ApiResponse (Maybe Text)
apiResponseTypeL f ApiResponse{..} = (\apiResponseType -> ApiResponse { apiResponseType, ..} ) <$> f apiResponseType
{-# INLINE apiResponseTypeL #-}

-- | 'apiResponseMessage' Lens
apiResponseMessageL :: Lens_' ApiResponse (Maybe Text)
apiResponseMessageL f ApiResponse{..} = (\apiResponseMessage -> ApiResponse { apiResponseMessage, ..} ) <$> f apiResponseMessage
{-# INLINE apiResponseMessageL #-}



-- * ArrayOfArrayOfNumberOnly

-- | 'arrayOfArrayOfNumberOnlyArrayArrayNumber' Lens
arrayOfArrayOfNumberOnlyArrayArrayNumberL :: Lens_' ArrayOfArrayOfNumberOnly (Maybe [[Double]])
arrayOfArrayOfNumberOnlyArrayArrayNumberL f ArrayOfArrayOfNumberOnly{..} = (\arrayOfArrayOfNumberOnlyArrayArrayNumber -> ArrayOfArrayOfNumberOnly { arrayOfArrayOfNumberOnlyArrayArrayNumber, ..} ) <$> f arrayOfArrayOfNumberOnlyArrayArrayNumber
{-# INLINE arrayOfArrayOfNumberOnlyArrayArrayNumberL #-}



-- * ArrayOfNumberOnly

-- | 'arrayOfNumberOnlyArrayNumber' Lens
arrayOfNumberOnlyArrayNumberL :: Lens_' ArrayOfNumberOnly (Maybe [Double])
arrayOfNumberOnlyArrayNumberL f ArrayOfNumberOnly{..} = (\arrayOfNumberOnlyArrayNumber -> ArrayOfNumberOnly { arrayOfNumberOnlyArrayNumber, ..} ) <$> f arrayOfNumberOnlyArrayNumber
{-# INLINE arrayOfNumberOnlyArrayNumberL #-}



-- * ArrayTest

-- | 'arrayTestArrayOfString' Lens
arrayTestArrayOfStringL :: Lens_' ArrayTest (Maybe [Text])
arrayTestArrayOfStringL f ArrayTest{..} = (\arrayTestArrayOfString -> ArrayTest { arrayTestArrayOfString, ..} ) <$> f arrayTestArrayOfString
{-# INLINE arrayTestArrayOfStringL #-}

-- | 'arrayTestArrayArrayOfInteger' Lens
arrayTestArrayArrayOfIntegerL :: Lens_' ArrayTest (Maybe [[Integer]])
arrayTestArrayArrayOfIntegerL f ArrayTest{..} = (\arrayTestArrayArrayOfInteger -> ArrayTest { arrayTestArrayArrayOfInteger, ..} ) <$> f arrayTestArrayArrayOfInteger
{-# INLINE arrayTestArrayArrayOfIntegerL #-}

-- | 'arrayTestArrayArrayOfModel' Lens
arrayTestArrayArrayOfModelL :: Lens_' ArrayTest (Maybe [[ReadOnlyFirst]])
arrayTestArrayArrayOfModelL f ArrayTest{..} = (\arrayTestArrayArrayOfModel -> ArrayTest { arrayTestArrayArrayOfModel, ..} ) <$> f arrayTestArrayArrayOfModel
{-# INLINE arrayTestArrayArrayOfModelL #-}



-- * Capitalization

-- | 'capitalizationSmallCamel' Lens
capitalizationSmallCamelL :: Lens_' Capitalization (Maybe Text)
capitalizationSmallCamelL f Capitalization{..} = (\capitalizationSmallCamel -> Capitalization { capitalizationSmallCamel, ..} ) <$> f capitalizationSmallCamel
{-# INLINE capitalizationSmallCamelL #-}

-- | 'capitalizationCapitalCamel' Lens
capitalizationCapitalCamelL :: Lens_' Capitalization (Maybe Text)
capitalizationCapitalCamelL f Capitalization{..} = (\capitalizationCapitalCamel -> Capitalization { capitalizationCapitalCamel, ..} ) <$> f capitalizationCapitalCamel
{-# INLINE capitalizationCapitalCamelL #-}

-- | 'capitalizationSmallSnake' Lens
capitalizationSmallSnakeL :: Lens_' Capitalization (Maybe Text)
capitalizationSmallSnakeL f Capitalization{..} = (\capitalizationSmallSnake -> Capitalization { capitalizationSmallSnake, ..} ) <$> f capitalizationSmallSnake
{-# INLINE capitalizationSmallSnakeL #-}

-- | 'capitalizationCapitalSnake' Lens
capitalizationCapitalSnakeL :: Lens_' Capitalization (Maybe Text)
capitalizationCapitalSnakeL f Capitalization{..} = (\capitalizationCapitalSnake -> Capitalization { capitalizationCapitalSnake, ..} ) <$> f capitalizationCapitalSnake
{-# INLINE capitalizationCapitalSnakeL #-}

-- | 'capitalizationScaEthFlowPoints' Lens
capitalizationScaEthFlowPointsL :: Lens_' Capitalization (Maybe Text)
capitalizationScaEthFlowPointsL f Capitalization{..} = (\capitalizationScaEthFlowPoints -> Capitalization { capitalizationScaEthFlowPoints, ..} ) <$> f capitalizationScaEthFlowPoints
{-# INLINE capitalizationScaEthFlowPointsL #-}

-- | 'capitalizationAttName' Lens
capitalizationAttNameL :: Lens_' Capitalization (Maybe Text)
capitalizationAttNameL f Capitalization{..} = (\capitalizationAttName -> Capitalization { capitalizationAttName, ..} ) <$> f capitalizationAttName
{-# INLINE capitalizationAttNameL #-}



-- * Cat

-- | 'catClassName' Lens
catClassNameL :: Lens_' Cat (Text)
catClassNameL f Cat{..} = (\catClassName -> Cat { catClassName, ..} ) <$> f catClassName
{-# INLINE catClassNameL #-}

-- | 'catColor' Lens
catColorL :: Lens_' Cat (Maybe Text)
catColorL f Cat{..} = (\catColor -> Cat { catColor, ..} ) <$> f catColor
{-# INLINE catColorL #-}

-- | 'catDeclawed' Lens
catDeclawedL :: Lens_' Cat (Maybe Bool)
catDeclawedL f Cat{..} = (\catDeclawed -> Cat { catDeclawed, ..} ) <$> f catDeclawed
{-# INLINE catDeclawedL #-}



-- * CatAllOf

-- | 'catAllOfDeclawed' Lens
catAllOfDeclawedL :: Lens_' CatAllOf (Maybe Bool)
catAllOfDeclawedL f CatAllOf{..} = (\catAllOfDeclawed -> CatAllOf { catAllOfDeclawed, ..} ) <$> f catAllOfDeclawed
{-# INLINE catAllOfDeclawedL #-}



-- * Category

-- | 'categoryId' Lens
categoryIdL :: Lens_' Category (Maybe Integer)
categoryIdL f Category{..} = (\categoryId -> Category { categoryId, ..} ) <$> f categoryId
{-# INLINE categoryIdL #-}

-- | 'categoryName' Lens
categoryNameL :: Lens_' Category (Text)
categoryNameL f Category{..} = (\categoryName -> Category { categoryName, ..} ) <$> f categoryName
{-# INLINE categoryNameL #-}



-- * ClassModel

-- | 'classModelClass' Lens
classModelClassL :: Lens_' ClassModel (Maybe Text)
classModelClassL f ClassModel{..} = (\classModelClass -> ClassModel { classModelClass, ..} ) <$> f classModelClass
{-# INLINE classModelClassL #-}



-- * Client

-- | 'clientClient' Lens
clientClientL :: Lens_' Client (Maybe Text)
clientClientL f Client{..} = (\clientClient -> Client { clientClient, ..} ) <$> f clientClient
{-# INLINE clientClientL #-}



-- * Dog

-- | 'dogClassName' Lens
dogClassNameL :: Lens_' Dog (Text)
dogClassNameL f Dog{..} = (\dogClassName -> Dog { dogClassName, ..} ) <$> f dogClassName
{-# INLINE dogClassNameL #-}

-- | 'dogColor' Lens
dogColorL :: Lens_' Dog (Maybe Text)
dogColorL f Dog{..} = (\dogColor -> Dog { dogColor, ..} ) <$> f dogColor
{-# INLINE dogColorL #-}

-- | 'dogBreed' Lens
dogBreedL :: Lens_' Dog (Maybe Text)
dogBreedL f Dog{..} = (\dogBreed -> Dog { dogBreed, ..} ) <$> f dogBreed
{-# INLINE dogBreedL #-}



-- * DogAllOf

-- | 'dogAllOfBreed' Lens
dogAllOfBreedL :: Lens_' DogAllOf (Maybe Text)
dogAllOfBreedL f DogAllOf{..} = (\dogAllOfBreed -> DogAllOf { dogAllOfBreed, ..} ) <$> f dogAllOfBreed
{-# INLINE dogAllOfBreedL #-}



-- * EnumArrays

-- | 'enumArraysJustSymbol' Lens
enumArraysJustSymbolL :: Lens_' EnumArrays (Maybe E'JustSymbol)
enumArraysJustSymbolL f EnumArrays{..} = (\enumArraysJustSymbol -> EnumArrays { enumArraysJustSymbol, ..} ) <$> f enumArraysJustSymbol
{-# INLINE enumArraysJustSymbolL #-}

-- | 'enumArraysArrayEnum' Lens
enumArraysArrayEnumL :: Lens_' EnumArrays (Maybe [E'ArrayEnum])
enumArraysArrayEnumL f EnumArrays{..} = (\enumArraysArrayEnum -> EnumArrays { enumArraysArrayEnum, ..} ) <$> f enumArraysArrayEnum
{-# INLINE enumArraysArrayEnumL #-}



-- * EnumClass



-- * EnumTest

-- | 'enumTestEnumString' Lens
enumTestEnumStringL :: Lens_' EnumTest (Maybe E'EnumString)
enumTestEnumStringL f EnumTest{..} = (\enumTestEnumString -> EnumTest { enumTestEnumString, ..} ) <$> f enumTestEnumString
{-# INLINE enumTestEnumStringL #-}

-- | 'enumTestEnumStringRequired' Lens
enumTestEnumStringRequiredL :: Lens_' EnumTest (E'EnumString)
enumTestEnumStringRequiredL f EnumTest{..} = (\enumTestEnumStringRequired -> EnumTest { enumTestEnumStringRequired, ..} ) <$> f enumTestEnumStringRequired
{-# INLINE enumTestEnumStringRequiredL #-}

-- | 'enumTestEnumInteger' Lens
enumTestEnumIntegerL :: Lens_' EnumTest (Maybe E'EnumInteger)
enumTestEnumIntegerL f EnumTest{..} = (\enumTestEnumInteger -> EnumTest { enumTestEnumInteger, ..} ) <$> f enumTestEnumInteger
{-# INLINE enumTestEnumIntegerL #-}

-- | 'enumTestEnumNumber' Lens
enumTestEnumNumberL :: Lens_' EnumTest (Maybe E'EnumNumber)
enumTestEnumNumberL f EnumTest{..} = (\enumTestEnumNumber -> EnumTest { enumTestEnumNumber, ..} ) <$> f enumTestEnumNumber
{-# INLINE enumTestEnumNumberL #-}

-- | 'enumTestOuterEnum' Lens
enumTestOuterEnumL :: Lens_' EnumTest (Maybe OuterEnum)
enumTestOuterEnumL f EnumTest{..} = (\enumTestOuterEnum -> EnumTest { enumTestOuterEnum, ..} ) <$> f enumTestOuterEnum
{-# INLINE enumTestOuterEnumL #-}

-- | 'enumTestOuterEnumInteger' Lens
enumTestOuterEnumIntegerL :: Lens_' EnumTest (Maybe OuterEnumInteger)
enumTestOuterEnumIntegerL f EnumTest{..} = (\enumTestOuterEnumInteger -> EnumTest { enumTestOuterEnumInteger, ..} ) <$> f enumTestOuterEnumInteger
{-# INLINE enumTestOuterEnumIntegerL #-}

-- | 'enumTestOuterEnumDefaultValue' Lens
enumTestOuterEnumDefaultValueL :: Lens_' EnumTest (Maybe OuterEnumDefaultValue)
enumTestOuterEnumDefaultValueL f EnumTest{..} = (\enumTestOuterEnumDefaultValue -> EnumTest { enumTestOuterEnumDefaultValue, ..} ) <$> f enumTestOuterEnumDefaultValue
{-# INLINE enumTestOuterEnumDefaultValueL #-}

-- | 'enumTestOuterEnumIntegerDefaultValue' Lens
enumTestOuterEnumIntegerDefaultValueL :: Lens_' EnumTest (Maybe OuterEnumIntegerDefaultValue)
enumTestOuterEnumIntegerDefaultValueL f EnumTest{..} = (\enumTestOuterEnumIntegerDefaultValue -> EnumTest { enumTestOuterEnumIntegerDefaultValue, ..} ) <$> f enumTestOuterEnumIntegerDefaultValue
{-# INLINE enumTestOuterEnumIntegerDefaultValueL #-}



-- * File

-- | 'fileSourceUri' Lens
fileSourceUriL :: Lens_' File (Maybe Text)
fileSourceUriL f File{..} = (\fileSourceUri -> File { fileSourceUri, ..} ) <$> f fileSourceUri
{-# INLINE fileSourceUriL #-}



-- * FileSchemaTestClass

-- | 'fileSchemaTestClassFile' Lens
fileSchemaTestClassFileL :: Lens_' FileSchemaTestClass (Maybe File)
fileSchemaTestClassFileL f FileSchemaTestClass{..} = (\fileSchemaTestClassFile -> FileSchemaTestClass { fileSchemaTestClassFile, ..} ) <$> f fileSchemaTestClassFile
{-# INLINE fileSchemaTestClassFileL #-}

-- | 'fileSchemaTestClassFiles' Lens
fileSchemaTestClassFilesL :: Lens_' FileSchemaTestClass (Maybe [File])
fileSchemaTestClassFilesL f FileSchemaTestClass{..} = (\fileSchemaTestClassFiles -> FileSchemaTestClass { fileSchemaTestClassFiles, ..} ) <$> f fileSchemaTestClassFiles
{-# INLINE fileSchemaTestClassFilesL #-}



-- * Foo

-- | 'fooBar' Lens
fooBarL :: Lens_' Foo (Maybe Text)
fooBarL f Foo{..} = (\fooBar -> Foo { fooBar, ..} ) <$> f fooBar
{-# INLINE fooBarL #-}



-- * FormatTest

-- | 'formatTestInteger' Lens
formatTestIntegerL :: Lens_' FormatTest (Maybe Int)
formatTestIntegerL f FormatTest{..} = (\formatTestInteger -> FormatTest { formatTestInteger, ..} ) <$> f formatTestInteger
{-# INLINE formatTestIntegerL #-}

-- | 'formatTestInt32' Lens
formatTestInt32L :: Lens_' FormatTest (Maybe Int)
formatTestInt32L f FormatTest{..} = (\formatTestInt32 -> FormatTest { formatTestInt32, ..} ) <$> f formatTestInt32
{-# INLINE formatTestInt32L #-}

-- | 'formatTestInt64' Lens
formatTestInt64L :: Lens_' FormatTest (Maybe Integer)
formatTestInt64L f FormatTest{..} = (\formatTestInt64 -> FormatTest { formatTestInt64, ..} ) <$> f formatTestInt64
{-# INLINE formatTestInt64L #-}

-- | 'formatTestNumber' Lens
formatTestNumberL :: Lens_' FormatTest (Double)
formatTestNumberL f FormatTest{..} = (\formatTestNumber -> FormatTest { formatTestNumber, ..} ) <$> f formatTestNumber
{-# INLINE formatTestNumberL #-}

-- | 'formatTestFloat' Lens
formatTestFloatL :: Lens_' FormatTest (Maybe Float)
formatTestFloatL f FormatTest{..} = (\formatTestFloat -> FormatTest { formatTestFloat, ..} ) <$> f formatTestFloat
{-# INLINE formatTestFloatL #-}

-- | 'formatTestDouble' Lens
formatTestDoubleL :: Lens_' FormatTest (Maybe Double)
formatTestDoubleL f FormatTest{..} = (\formatTestDouble -> FormatTest { formatTestDouble, ..} ) <$> f formatTestDouble
{-# INLINE formatTestDoubleL #-}

-- | 'formatTestString' Lens
formatTestStringL :: Lens_' FormatTest (Maybe Text)
formatTestStringL f FormatTest{..} = (\formatTestString -> FormatTest { formatTestString, ..} ) <$> f formatTestString
{-# INLINE formatTestStringL #-}

-- | 'formatTestByte' Lens
formatTestByteL :: Lens_' FormatTest (ByteArray)
formatTestByteL f FormatTest{..} = (\formatTestByte -> FormatTest { formatTestByte, ..} ) <$> f formatTestByte
{-# INLINE formatTestByteL #-}

-- | 'formatTestBinary' Lens
formatTestBinaryL :: Lens_' FormatTest (Maybe FilePath)
formatTestBinaryL f FormatTest{..} = (\formatTestBinary -> FormatTest { formatTestBinary, ..} ) <$> f formatTestBinary
{-# INLINE formatTestBinaryL #-}

-- | 'formatTestDate' Lens
formatTestDateL :: Lens_' FormatTest (Date)
formatTestDateL f FormatTest{..} = (\formatTestDate -> FormatTest { formatTestDate, ..} ) <$> f formatTestDate
{-# INLINE formatTestDateL #-}

-- | 'formatTestDateTime' Lens
formatTestDateTimeL :: Lens_' FormatTest (Maybe DateTime)
formatTestDateTimeL f FormatTest{..} = (\formatTestDateTime -> FormatTest { formatTestDateTime, ..} ) <$> f formatTestDateTime
{-# INLINE formatTestDateTimeL #-}

-- | 'formatTestUuid' Lens
formatTestUuidL :: Lens_' FormatTest (Maybe Text)
formatTestUuidL f FormatTest{..} = (\formatTestUuid -> FormatTest { formatTestUuid, ..} ) <$> f formatTestUuid
{-# INLINE formatTestUuidL #-}

-- | 'formatTestPassword' Lens
formatTestPasswordL :: Lens_' FormatTest (Text)
formatTestPasswordL f FormatTest{..} = (\formatTestPassword -> FormatTest { formatTestPassword, ..} ) <$> f formatTestPassword
{-# INLINE formatTestPasswordL #-}

-- | 'formatTestPatternWithDigits' Lens
formatTestPatternWithDigitsL :: Lens_' FormatTest (Maybe Text)
formatTestPatternWithDigitsL f FormatTest{..} = (\formatTestPatternWithDigits -> FormatTest { formatTestPatternWithDigits, ..} ) <$> f formatTestPatternWithDigits
{-# INLINE formatTestPatternWithDigitsL #-}

-- | 'formatTestPatternWithDigitsAndDelimiter' Lens
formatTestPatternWithDigitsAndDelimiterL :: Lens_' FormatTest (Maybe Text)
formatTestPatternWithDigitsAndDelimiterL f FormatTest{..} = (\formatTestPatternWithDigitsAndDelimiter -> FormatTest { formatTestPatternWithDigitsAndDelimiter, ..} ) <$> f formatTestPatternWithDigitsAndDelimiter
{-# INLINE formatTestPatternWithDigitsAndDelimiterL #-}



-- * HasOnlyReadOnly

-- | 'hasOnlyReadOnlyBar' Lens
hasOnlyReadOnlyBarL :: Lens_' HasOnlyReadOnly (Maybe Text)
hasOnlyReadOnlyBarL f HasOnlyReadOnly{..} = (\hasOnlyReadOnlyBar -> HasOnlyReadOnly { hasOnlyReadOnlyBar, ..} ) <$> f hasOnlyReadOnlyBar
{-# INLINE hasOnlyReadOnlyBarL #-}

-- | 'hasOnlyReadOnlyFoo' Lens
hasOnlyReadOnlyFooL :: Lens_' HasOnlyReadOnly (Maybe Text)
hasOnlyReadOnlyFooL f HasOnlyReadOnly{..} = (\hasOnlyReadOnlyFoo -> HasOnlyReadOnly { hasOnlyReadOnlyFoo, ..} ) <$> f hasOnlyReadOnlyFoo
{-# INLINE hasOnlyReadOnlyFooL #-}



-- * HealthCheckResult

-- | 'healthCheckResultNullableMessage' Lens
healthCheckResultNullableMessageL :: Lens_' HealthCheckResult (Maybe Text)
healthCheckResultNullableMessageL f HealthCheckResult{..} = (\healthCheckResultNullableMessage -> HealthCheckResult { healthCheckResultNullableMessage, ..} ) <$> f healthCheckResultNullableMessage
{-# INLINE healthCheckResultNullableMessageL #-}



-- * InlineObject

-- | 'inlineObjectName' Lens
inlineObjectNameL :: Lens_' InlineObject (Maybe Text)
inlineObjectNameL f InlineObject{..} = (\inlineObjectName -> InlineObject { inlineObjectName, ..} ) <$> f inlineObjectName
{-# INLINE inlineObjectNameL #-}

-- | 'inlineObjectStatus' Lens
inlineObjectStatusL :: Lens_' InlineObject (Maybe Text)
inlineObjectStatusL f InlineObject{..} = (\inlineObjectStatus -> InlineObject { inlineObjectStatus, ..} ) <$> f inlineObjectStatus
{-# INLINE inlineObjectStatusL #-}



-- * InlineObject1

-- | 'inlineObject1AdditionalMetadata' Lens
inlineObject1AdditionalMetadataL :: Lens_' InlineObject1 (Maybe Text)
inlineObject1AdditionalMetadataL f InlineObject1{..} = (\inlineObject1AdditionalMetadata -> InlineObject1 { inlineObject1AdditionalMetadata, ..} ) <$> f inlineObject1AdditionalMetadata
{-# INLINE inlineObject1AdditionalMetadataL #-}

-- | 'inlineObject1File' Lens
inlineObject1FileL :: Lens_' InlineObject1 (Maybe FilePath)
inlineObject1FileL f InlineObject1{..} = (\inlineObject1File -> InlineObject1 { inlineObject1File, ..} ) <$> f inlineObject1File
{-# INLINE inlineObject1FileL #-}



-- * InlineObject2

-- | 'inlineObject2EnumFormStringArray' Lens
inlineObject2EnumFormStringArrayL :: Lens_' InlineObject2 (Maybe [E'EnumFormStringArray])
inlineObject2EnumFormStringArrayL f InlineObject2{..} = (\inlineObject2EnumFormStringArray -> InlineObject2 { inlineObject2EnumFormStringArray, ..} ) <$> f inlineObject2EnumFormStringArray
{-# INLINE inlineObject2EnumFormStringArrayL #-}

-- | 'inlineObject2EnumFormString' Lens
inlineObject2EnumFormStringL :: Lens_' InlineObject2 (Maybe E'EnumFormString)
inlineObject2EnumFormStringL f InlineObject2{..} = (\inlineObject2EnumFormString -> InlineObject2 { inlineObject2EnumFormString, ..} ) <$> f inlineObject2EnumFormString
{-# INLINE inlineObject2EnumFormStringL #-}



-- * InlineObject3

-- | 'inlineObject3Integer' Lens
inlineObject3IntegerL :: Lens_' InlineObject3 (Maybe Int)
inlineObject3IntegerL f InlineObject3{..} = (\inlineObject3Integer -> InlineObject3 { inlineObject3Integer, ..} ) <$> f inlineObject3Integer
{-# INLINE inlineObject3IntegerL #-}

-- | 'inlineObject3Int32' Lens
inlineObject3Int32L :: Lens_' InlineObject3 (Maybe Int)
inlineObject3Int32L f InlineObject3{..} = (\inlineObject3Int32 -> InlineObject3 { inlineObject3Int32, ..} ) <$> f inlineObject3Int32
{-# INLINE inlineObject3Int32L #-}

-- | 'inlineObject3Int64' Lens
inlineObject3Int64L :: Lens_' InlineObject3 (Maybe Integer)
inlineObject3Int64L f InlineObject3{..} = (\inlineObject3Int64 -> InlineObject3 { inlineObject3Int64, ..} ) <$> f inlineObject3Int64
{-# INLINE inlineObject3Int64L #-}

-- | 'inlineObject3Number' Lens
inlineObject3NumberL :: Lens_' InlineObject3 (Double)
inlineObject3NumberL f InlineObject3{..} = (\inlineObject3Number -> InlineObject3 { inlineObject3Number, ..} ) <$> f inlineObject3Number
{-# INLINE inlineObject3NumberL #-}

-- | 'inlineObject3Float' Lens
inlineObject3FloatL :: Lens_' InlineObject3 (Maybe Float)
inlineObject3FloatL f InlineObject3{..} = (\inlineObject3Float -> InlineObject3 { inlineObject3Float, ..} ) <$> f inlineObject3Float
{-# INLINE inlineObject3FloatL #-}

-- | 'inlineObject3Double' Lens
inlineObject3DoubleL :: Lens_' InlineObject3 (Double)
inlineObject3DoubleL f InlineObject3{..} = (\inlineObject3Double -> InlineObject3 { inlineObject3Double, ..} ) <$> f inlineObject3Double
{-# INLINE inlineObject3DoubleL #-}

-- | 'inlineObject3String' Lens
inlineObject3StringL :: Lens_' InlineObject3 (Maybe Text)
inlineObject3StringL f InlineObject3{..} = (\inlineObject3String -> InlineObject3 { inlineObject3String, ..} ) <$> f inlineObject3String
{-# INLINE inlineObject3StringL #-}

-- | 'inlineObject3PatternWithoutDelimiter' Lens
inlineObject3PatternWithoutDelimiterL :: Lens_' InlineObject3 (Text)
inlineObject3PatternWithoutDelimiterL f InlineObject3{..} = (\inlineObject3PatternWithoutDelimiter -> InlineObject3 { inlineObject3PatternWithoutDelimiter, ..} ) <$> f inlineObject3PatternWithoutDelimiter
{-# INLINE inlineObject3PatternWithoutDelimiterL #-}

-- | 'inlineObject3Byte' Lens
inlineObject3ByteL :: Lens_' InlineObject3 (ByteArray)
inlineObject3ByteL f InlineObject3{..} = (\inlineObject3Byte -> InlineObject3 { inlineObject3Byte, ..} ) <$> f inlineObject3Byte
{-# INLINE inlineObject3ByteL #-}

-- | 'inlineObject3Binary' Lens
inlineObject3BinaryL :: Lens_' InlineObject3 (Maybe FilePath)
inlineObject3BinaryL f InlineObject3{..} = (\inlineObject3Binary -> InlineObject3 { inlineObject3Binary, ..} ) <$> f inlineObject3Binary
{-# INLINE inlineObject3BinaryL #-}

-- | 'inlineObject3Date' Lens
inlineObject3DateL :: Lens_' InlineObject3 (Maybe Date)
inlineObject3DateL f InlineObject3{..} = (\inlineObject3Date -> InlineObject3 { inlineObject3Date, ..} ) <$> f inlineObject3Date
{-# INLINE inlineObject3DateL #-}

-- | 'inlineObject3DateTime' Lens
inlineObject3DateTimeL :: Lens_' InlineObject3 (Maybe DateTime)
inlineObject3DateTimeL f InlineObject3{..} = (\inlineObject3DateTime -> InlineObject3 { inlineObject3DateTime, ..} ) <$> f inlineObject3DateTime
{-# INLINE inlineObject3DateTimeL #-}

-- | 'inlineObject3Password' Lens
inlineObject3PasswordL :: Lens_' InlineObject3 (Maybe Text)
inlineObject3PasswordL f InlineObject3{..} = (\inlineObject3Password -> InlineObject3 { inlineObject3Password, ..} ) <$> f inlineObject3Password
{-# INLINE inlineObject3PasswordL #-}

-- | 'inlineObject3Callback' Lens
inlineObject3CallbackL :: Lens_' InlineObject3 (Maybe Text)
inlineObject3CallbackL f InlineObject3{..} = (\inlineObject3Callback -> InlineObject3 { inlineObject3Callback, ..} ) <$> f inlineObject3Callback
{-# INLINE inlineObject3CallbackL #-}



-- * InlineObject4

-- | 'inlineObject4Param' Lens
inlineObject4ParamL :: Lens_' InlineObject4 (Text)
inlineObject4ParamL f InlineObject4{..} = (\inlineObject4Param -> InlineObject4 { inlineObject4Param, ..} ) <$> f inlineObject4Param
{-# INLINE inlineObject4ParamL #-}

-- | 'inlineObject4Param2' Lens
inlineObject4Param2L :: Lens_' InlineObject4 (Text)
inlineObject4Param2L f InlineObject4{..} = (\inlineObject4Param2 -> InlineObject4 { inlineObject4Param2, ..} ) <$> f inlineObject4Param2
{-# INLINE inlineObject4Param2L #-}



-- * InlineObject5

-- | 'inlineObject5AdditionalMetadata' Lens
inlineObject5AdditionalMetadataL :: Lens_' InlineObject5 (Maybe Text)
inlineObject5AdditionalMetadataL f InlineObject5{..} = (\inlineObject5AdditionalMetadata -> InlineObject5 { inlineObject5AdditionalMetadata, ..} ) <$> f inlineObject5AdditionalMetadata
{-# INLINE inlineObject5AdditionalMetadataL #-}

-- | 'inlineObject5RequiredFile' Lens
inlineObject5RequiredFileL :: Lens_' InlineObject5 (FilePath)
inlineObject5RequiredFileL f InlineObject5{..} = (\inlineObject5RequiredFile -> InlineObject5 { inlineObject5RequiredFile, ..} ) <$> f inlineObject5RequiredFile
{-# INLINE inlineObject5RequiredFileL #-}



-- * InlineResponseDefault

-- | 'inlineResponseDefaultString' Lens
inlineResponseDefaultStringL :: Lens_' InlineResponseDefault (Maybe Foo)
inlineResponseDefaultStringL f InlineResponseDefault{..} = (\inlineResponseDefaultString -> InlineResponseDefault { inlineResponseDefaultString, ..} ) <$> f inlineResponseDefaultString
{-# INLINE inlineResponseDefaultStringL #-}



-- * MapTest

-- | 'mapTestMapMapOfString' Lens
mapTestMapMapOfStringL :: Lens_' MapTest (Maybe (Map.Map String (Map.Map String Text)))
mapTestMapMapOfStringL f MapTest{..} = (\mapTestMapMapOfString -> MapTest { mapTestMapMapOfString, ..} ) <$> f mapTestMapMapOfString
{-# INLINE mapTestMapMapOfStringL #-}

-- | 'mapTestMapOfEnumString' Lens
mapTestMapOfEnumStringL :: Lens_' MapTest (Maybe (Map.Map String E'Inner))
mapTestMapOfEnumStringL f MapTest{..} = (\mapTestMapOfEnumString -> MapTest { mapTestMapOfEnumString, ..} ) <$> f mapTestMapOfEnumString
{-# INLINE mapTestMapOfEnumStringL #-}

-- | 'mapTestDirectMap' Lens
mapTestDirectMapL :: Lens_' MapTest (Maybe (Map.Map String Bool))
mapTestDirectMapL f MapTest{..} = (\mapTestDirectMap -> MapTest { mapTestDirectMap, ..} ) <$> f mapTestDirectMap
{-# INLINE mapTestDirectMapL #-}

-- | 'mapTestIndirectMap' Lens
mapTestIndirectMapL :: Lens_' MapTest (Maybe (Map.Map String Bool))
mapTestIndirectMapL f MapTest{..} = (\mapTestIndirectMap -> MapTest { mapTestIndirectMap, ..} ) <$> f mapTestIndirectMap
{-# INLINE mapTestIndirectMapL #-}



-- * MixedPropertiesAndAdditionalPropertiesClass

-- | 'mixedPropertiesAndAdditionalPropertiesClassUuid' Lens
mixedPropertiesAndAdditionalPropertiesClassUuidL :: Lens_' MixedPropertiesAndAdditionalPropertiesClass (Maybe Text)
mixedPropertiesAndAdditionalPropertiesClassUuidL f MixedPropertiesAndAdditionalPropertiesClass{..} = (\mixedPropertiesAndAdditionalPropertiesClassUuid -> MixedPropertiesAndAdditionalPropertiesClass { mixedPropertiesAndAdditionalPropertiesClassUuid, ..} ) <$> f mixedPropertiesAndAdditionalPropertiesClassUuid
{-# INLINE mixedPropertiesAndAdditionalPropertiesClassUuidL #-}

-- | 'mixedPropertiesAndAdditionalPropertiesClassDateTime' Lens
mixedPropertiesAndAdditionalPropertiesClassDateTimeL :: Lens_' MixedPropertiesAndAdditionalPropertiesClass (Maybe DateTime)
mixedPropertiesAndAdditionalPropertiesClassDateTimeL f MixedPropertiesAndAdditionalPropertiesClass{..} = (\mixedPropertiesAndAdditionalPropertiesClassDateTime -> MixedPropertiesAndAdditionalPropertiesClass { mixedPropertiesAndAdditionalPropertiesClassDateTime, ..} ) <$> f mixedPropertiesAndAdditionalPropertiesClassDateTime
{-# INLINE mixedPropertiesAndAdditionalPropertiesClassDateTimeL #-}

-- | 'mixedPropertiesAndAdditionalPropertiesClassMap' Lens
mixedPropertiesAndAdditionalPropertiesClassMapL :: Lens_' MixedPropertiesAndAdditionalPropertiesClass (Maybe (Map.Map String Animal))
mixedPropertiesAndAdditionalPropertiesClassMapL f MixedPropertiesAndAdditionalPropertiesClass{..} = (\mixedPropertiesAndAdditionalPropertiesClassMap -> MixedPropertiesAndAdditionalPropertiesClass { mixedPropertiesAndAdditionalPropertiesClassMap, ..} ) <$> f mixedPropertiesAndAdditionalPropertiesClassMap
{-# INLINE mixedPropertiesAndAdditionalPropertiesClassMapL #-}



-- * Model200Response

-- | 'model200ResponseName' Lens
model200ResponseNameL :: Lens_' Model200Response (Maybe Int)
model200ResponseNameL f Model200Response{..} = (\model200ResponseName -> Model200Response { model200ResponseName, ..} ) <$> f model200ResponseName
{-# INLINE model200ResponseNameL #-}

-- | 'model200ResponseClass' Lens
model200ResponseClassL :: Lens_' Model200Response (Maybe Text)
model200ResponseClassL f Model200Response{..} = (\model200ResponseClass -> Model200Response { model200ResponseClass, ..} ) <$> f model200ResponseClass
{-# INLINE model200ResponseClassL #-}



-- * ModelList

-- | 'modelList123list' Lens
modelList123listL :: Lens_' ModelList (Maybe Text)
modelList123listL f ModelList{..} = (\modelList123list -> ModelList { modelList123list, ..} ) <$> f modelList123list
{-# INLINE modelList123listL #-}



-- * ModelReturn

-- | 'modelReturnReturn' Lens
modelReturnReturnL :: Lens_' ModelReturn (Maybe Int)
modelReturnReturnL f ModelReturn{..} = (\modelReturnReturn -> ModelReturn { modelReturnReturn, ..} ) <$> f modelReturnReturn
{-# INLINE modelReturnReturnL #-}



-- * Name

-- | 'nameName' Lens
nameNameL :: Lens_' Name (Int)
nameNameL f Name{..} = (\nameName -> Name { nameName, ..} ) <$> f nameName
{-# INLINE nameNameL #-}

-- | 'nameSnakeCase' Lens
nameSnakeCaseL :: Lens_' Name (Maybe Int)
nameSnakeCaseL f Name{..} = (\nameSnakeCase -> Name { nameSnakeCase, ..} ) <$> f nameSnakeCase
{-# INLINE nameSnakeCaseL #-}

-- | 'nameProperty' Lens
namePropertyL :: Lens_' Name (Maybe Text)
namePropertyL f Name{..} = (\nameProperty -> Name { nameProperty, ..} ) <$> f nameProperty
{-# INLINE namePropertyL #-}

-- | 'name123number' Lens
name123numberL :: Lens_' Name (Maybe Int)
name123numberL f Name{..} = (\name123number -> Name { name123number, ..} ) <$> f name123number
{-# INLINE name123numberL #-}



-- * NullableClass

-- | 'nullableClassIntegerProp' Lens
nullableClassIntegerPropL :: Lens_' NullableClass (Maybe Int)
nullableClassIntegerPropL f NullableClass{..} = (\nullableClassIntegerProp -> NullableClass { nullableClassIntegerProp, ..} ) <$> f nullableClassIntegerProp
{-# INLINE nullableClassIntegerPropL #-}

-- | 'nullableClassNumberProp' Lens
nullableClassNumberPropL :: Lens_' NullableClass (Maybe Double)
nullableClassNumberPropL f NullableClass{..} = (\nullableClassNumberProp -> NullableClass { nullableClassNumberProp, ..} ) <$> f nullableClassNumberProp
{-# INLINE nullableClassNumberPropL #-}

-- | 'nullableClassBooleanProp' Lens
nullableClassBooleanPropL :: Lens_' NullableClass (Maybe Bool)
nullableClassBooleanPropL f NullableClass{..} = (\nullableClassBooleanProp -> NullableClass { nullableClassBooleanProp, ..} ) <$> f nullableClassBooleanProp
{-# INLINE nullableClassBooleanPropL #-}

-- | 'nullableClassStringProp' Lens
nullableClassStringPropL :: Lens_' NullableClass (Maybe Text)
nullableClassStringPropL f NullableClass{..} = (\nullableClassStringProp -> NullableClass { nullableClassStringProp, ..} ) <$> f nullableClassStringProp
{-# INLINE nullableClassStringPropL #-}

-- | 'nullableClassDateProp' Lens
nullableClassDatePropL :: Lens_' NullableClass (Maybe Date)
nullableClassDatePropL f NullableClass{..} = (\nullableClassDateProp -> NullableClass { nullableClassDateProp, ..} ) <$> f nullableClassDateProp
{-# INLINE nullableClassDatePropL #-}

-- | 'nullableClassDatetimeProp' Lens
nullableClassDatetimePropL :: Lens_' NullableClass (Maybe DateTime)
nullableClassDatetimePropL f NullableClass{..} = (\nullableClassDatetimeProp -> NullableClass { nullableClassDatetimeProp, ..} ) <$> f nullableClassDatetimeProp
{-# INLINE nullableClassDatetimePropL #-}

-- | 'nullableClassArrayNullableProp' Lens
nullableClassArrayNullablePropL :: Lens_' NullableClass (Maybe [A.Value])
nullableClassArrayNullablePropL f NullableClass{..} = (\nullableClassArrayNullableProp -> NullableClass { nullableClassArrayNullableProp, ..} ) <$> f nullableClassArrayNullableProp
{-# INLINE nullableClassArrayNullablePropL #-}

-- | 'nullableClassArrayAndItemsNullableProp' Lens
nullableClassArrayAndItemsNullablePropL :: Lens_' NullableClass (Maybe [A.Value])
nullableClassArrayAndItemsNullablePropL f NullableClass{..} = (\nullableClassArrayAndItemsNullableProp -> NullableClass { nullableClassArrayAndItemsNullableProp, ..} ) <$> f nullableClassArrayAndItemsNullableProp
{-# INLINE nullableClassArrayAndItemsNullablePropL #-}

-- | 'nullableClassArrayItemsNullable' Lens
nullableClassArrayItemsNullableL :: Lens_' NullableClass (Maybe [A.Value])
nullableClassArrayItemsNullableL f NullableClass{..} = (\nullableClassArrayItemsNullable -> NullableClass { nullableClassArrayItemsNullable, ..} ) <$> f nullableClassArrayItemsNullable
{-# INLINE nullableClassArrayItemsNullableL #-}

-- | 'nullableClassObjectNullableProp' Lens
nullableClassObjectNullablePropL :: Lens_' NullableClass (Maybe (Map.Map String A.Value))
nullableClassObjectNullablePropL f NullableClass{..} = (\nullableClassObjectNullableProp -> NullableClass { nullableClassObjectNullableProp, ..} ) <$> f nullableClassObjectNullableProp
{-# INLINE nullableClassObjectNullablePropL #-}

-- | 'nullableClassObjectAndItemsNullableProp' Lens
nullableClassObjectAndItemsNullablePropL :: Lens_' NullableClass (Maybe (Map.Map String A.Value))
nullableClassObjectAndItemsNullablePropL f NullableClass{..} = (\nullableClassObjectAndItemsNullableProp -> NullableClass { nullableClassObjectAndItemsNullableProp, ..} ) <$> f nullableClassObjectAndItemsNullableProp
{-# INLINE nullableClassObjectAndItemsNullablePropL #-}

-- | 'nullableClassObjectItemsNullable' Lens
nullableClassObjectItemsNullableL :: Lens_' NullableClass (Maybe (Map.Map String A.Value))
nullableClassObjectItemsNullableL f NullableClass{..} = (\nullableClassObjectItemsNullable -> NullableClass { nullableClassObjectItemsNullable, ..} ) <$> f nullableClassObjectItemsNullable
{-# INLINE nullableClassObjectItemsNullableL #-}



-- * NumberOnly

-- | 'numberOnlyJustNumber' Lens
numberOnlyJustNumberL :: Lens_' NumberOnly (Maybe Double)
numberOnlyJustNumberL f NumberOnly{..} = (\numberOnlyJustNumber -> NumberOnly { numberOnlyJustNumber, ..} ) <$> f numberOnlyJustNumber
{-# INLINE numberOnlyJustNumberL #-}



-- * Order

-- | 'orderId' Lens
orderIdL :: Lens_' Order (Maybe Integer)
orderIdL f Order{..} = (\orderId -> Order { orderId, ..} ) <$> f orderId
{-# INLINE orderIdL #-}

-- | 'orderPetId' Lens
orderPetIdL :: Lens_' Order (Maybe Integer)
orderPetIdL f Order{..} = (\orderPetId -> Order { orderPetId, ..} ) <$> f orderPetId
{-# INLINE orderPetIdL #-}

-- | 'orderQuantity' Lens
orderQuantityL :: Lens_' Order (Maybe Int)
orderQuantityL f Order{..} = (\orderQuantity -> Order { orderQuantity, ..} ) <$> f orderQuantity
{-# INLINE orderQuantityL #-}

-- | 'orderShipDate' Lens
orderShipDateL :: Lens_' Order (Maybe DateTime)
orderShipDateL f Order{..} = (\orderShipDate -> Order { orderShipDate, ..} ) <$> f orderShipDate
{-# INLINE orderShipDateL #-}

-- | 'orderStatus' Lens
orderStatusL :: Lens_' Order (Maybe E'Status)
orderStatusL f Order{..} = (\orderStatus -> Order { orderStatus, ..} ) <$> f orderStatus
{-# INLINE orderStatusL #-}

-- | 'orderComplete' Lens
orderCompleteL :: Lens_' Order (Maybe Bool)
orderCompleteL f Order{..} = (\orderComplete -> Order { orderComplete, ..} ) <$> f orderComplete
{-# INLINE orderCompleteL #-}



-- * OuterComposite

-- | 'outerCompositeMyNumber' Lens
outerCompositeMyNumberL :: Lens_' OuterComposite (Maybe Double)
outerCompositeMyNumberL f OuterComposite{..} = (\outerCompositeMyNumber -> OuterComposite { outerCompositeMyNumber, ..} ) <$> f outerCompositeMyNumber
{-# INLINE outerCompositeMyNumberL #-}

-- | 'outerCompositeMyString' Lens
outerCompositeMyStringL :: Lens_' OuterComposite (Maybe Text)
outerCompositeMyStringL f OuterComposite{..} = (\outerCompositeMyString -> OuterComposite { outerCompositeMyString, ..} ) <$> f outerCompositeMyString
{-# INLINE outerCompositeMyStringL #-}

-- | 'outerCompositeMyBoolean' Lens
outerCompositeMyBooleanL :: Lens_' OuterComposite (Maybe Bool)
outerCompositeMyBooleanL f OuterComposite{..} = (\outerCompositeMyBoolean -> OuterComposite { outerCompositeMyBoolean, ..} ) <$> f outerCompositeMyBoolean
{-# INLINE outerCompositeMyBooleanL #-}



-- * OuterEnum



-- * OuterEnumDefaultValue



-- * OuterEnumInteger



-- * OuterEnumIntegerDefaultValue



-- * Pet

-- | 'petId' Lens
petIdL :: Lens_' Pet (Maybe Integer)
petIdL f Pet{..} = (\petId -> Pet { petId, ..} ) <$> f petId
{-# INLINE petIdL #-}

-- | 'petCategory' Lens
petCategoryL :: Lens_' Pet (Maybe Category)
petCategoryL f Pet{..} = (\petCategory -> Pet { petCategory, ..} ) <$> f petCategory
{-# INLINE petCategoryL #-}

-- | 'petName' Lens
petNameL :: Lens_' Pet (Text)
petNameL f Pet{..} = (\petName -> Pet { petName, ..} ) <$> f petName
{-# INLINE petNameL #-}

-- | 'petPhotoUrls' Lens
petPhotoUrlsL :: Lens_' Pet ([Text])
petPhotoUrlsL f Pet{..} = (\petPhotoUrls -> Pet { petPhotoUrls, ..} ) <$> f petPhotoUrls
{-# INLINE petPhotoUrlsL #-}

-- | 'petTags' Lens
petTagsL :: Lens_' Pet (Maybe [Tag])
petTagsL f Pet{..} = (\petTags -> Pet { petTags, ..} ) <$> f petTags
{-# INLINE petTagsL #-}

-- | 'petStatus' Lens
petStatusL :: Lens_' Pet (Maybe E'Status2)
petStatusL f Pet{..} = (\petStatus -> Pet { petStatus, ..} ) <$> f petStatus
{-# INLINE petStatusL #-}



-- * ReadOnlyFirst

-- | 'readOnlyFirstBar' Lens
readOnlyFirstBarL :: Lens_' ReadOnlyFirst (Maybe Text)
readOnlyFirstBarL f ReadOnlyFirst{..} = (\readOnlyFirstBar -> ReadOnlyFirst { readOnlyFirstBar, ..} ) <$> f readOnlyFirstBar
{-# INLINE readOnlyFirstBarL #-}

-- | 'readOnlyFirstBaz' Lens
readOnlyFirstBazL :: Lens_' ReadOnlyFirst (Maybe Text)
readOnlyFirstBazL f ReadOnlyFirst{..} = (\readOnlyFirstBaz -> ReadOnlyFirst { readOnlyFirstBaz, ..} ) <$> f readOnlyFirstBaz
{-# INLINE readOnlyFirstBazL #-}



-- * SpecialModelName

-- | 'specialModelNameSpecialPropertyName' Lens
specialModelNameSpecialPropertyNameL :: Lens_' SpecialModelName (Maybe Integer)
specialModelNameSpecialPropertyNameL f SpecialModelName{..} = (\specialModelNameSpecialPropertyName -> SpecialModelName { specialModelNameSpecialPropertyName, ..} ) <$> f specialModelNameSpecialPropertyName
{-# INLINE specialModelNameSpecialPropertyNameL #-}



-- * Tag

-- | 'tagId' Lens
tagIdL :: Lens_' Tag (Maybe Integer)
tagIdL f Tag{..} = (\tagId -> Tag { tagId, ..} ) <$> f tagId
{-# INLINE tagIdL #-}

-- | 'tagName' Lens
tagNameL :: Lens_' Tag (Maybe Text)
tagNameL f Tag{..} = (\tagName -> Tag { tagName, ..} ) <$> f tagName
{-# INLINE tagNameL #-}



-- * User

-- | 'userId' Lens
userIdL :: Lens_' User (Maybe Integer)
userIdL f User{..} = (\userId -> User { userId, ..} ) <$> f userId
{-# INLINE userIdL #-}

-- | 'userUsername' Lens
userUsernameL :: Lens_' User (Maybe Text)
userUsernameL f User{..} = (\userUsername -> User { userUsername, ..} ) <$> f userUsername
{-# INLINE userUsernameL #-}

-- | 'userFirstName' Lens
userFirstNameL :: Lens_' User (Maybe Text)
userFirstNameL f User{..} = (\userFirstName -> User { userFirstName, ..} ) <$> f userFirstName
{-# INLINE userFirstNameL #-}

-- | 'userLastName' Lens
userLastNameL :: Lens_' User (Maybe Text)
userLastNameL f User{..} = (\userLastName -> User { userLastName, ..} ) <$> f userLastName
{-# INLINE userLastNameL #-}

-- | 'userEmail' Lens
userEmailL :: Lens_' User (Maybe Text)
userEmailL f User{..} = (\userEmail -> User { userEmail, ..} ) <$> f userEmail
{-# INLINE userEmailL #-}

-- | 'userPassword' Lens
userPasswordL :: Lens_' User (Maybe Text)
userPasswordL f User{..} = (\userPassword -> User { userPassword, ..} ) <$> f userPassword
{-# INLINE userPasswordL #-}

-- | 'userPhone' Lens
userPhoneL :: Lens_' User (Maybe Text)
userPhoneL f User{..} = (\userPhone -> User { userPhone, ..} ) <$> f userPhone
{-# INLINE userPhoneL #-}

-- | 'userUserStatus' Lens
userUserStatusL :: Lens_' User (Maybe Int)
userUserStatusL f User{..} = (\userUserStatus -> User { userUserStatus, ..} ) <$> f userUserStatus
{-# INLINE userUserStatusL #-}


