{-
   OpenAPI Petstore

   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI Version: 3.0.0
   OpenAPI Petstore API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OpenAPIPetstore.API.Store
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OpenAPIPetstore.API.Store where

import OpenAPIPetstore.Core
import OpenAPIPetstore.MimeTypes
import OpenAPIPetstore.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Store

-- *** deleteOrder

-- | @DELETE \/store\/order\/{order_id}@
-- 
-- Delete purchase order by ID
-- 
-- For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
-- 
deleteOrder 
  :: OrderIdText -- ^ "orderId" -  ID of the order that needs to be deleted
  -> OpenAPIPetstoreRequest DeleteOrder MimeNoContent NoContent MimeNoContent
deleteOrder (OrderIdText orderId) =
  _mkRequest "DELETE" ["/store/order/",toPath orderId]

data DeleteOrder  
instance Produces DeleteOrder MimeNoContent


-- *** getInventory

-- | @GET \/store\/inventory@
-- 
-- Returns pet inventories by status
-- 
-- Returns a map of status codes to quantities
-- 
-- AuthMethod: 'AuthApiKeyApiKey'
-- 
getInventory 
  :: OpenAPIPetstoreRequest GetInventory MimeNoContent ((Map.Map String Int)) MimeJSON
getInventory =
  _mkRequest "GET" ["/store/inventory"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)

data GetInventory  
-- | @application/json@
instance Produces GetInventory MimeJSON


-- *** getOrderById

-- | @GET \/store\/order\/{order_id}@
-- 
-- Find purchase order by ID
-- 
-- For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
-- 
getOrderById 
  :: Accept accept -- ^ request accept ('MimeType')
  -> OrderId -- ^ "orderId" -  ID of pet that needs to be fetched
  -> OpenAPIPetstoreRequest GetOrderById MimeNoContent Order accept
getOrderById  _ (OrderId orderId) =
  _mkRequest "GET" ["/store/order/",toPath orderId]

data GetOrderById  
-- | @application/xml@
instance Produces GetOrderById MimeXML
-- | @application/json@
instance Produces GetOrderById MimeJSON


-- *** placeOrder

-- | @POST \/store\/order@
-- 
-- Place an order for a pet
-- 
placeOrder 
  :: (Consumes PlaceOrder MimeJSON, MimeRender MimeJSON Order)
  => Accept accept -- ^ request accept ('MimeType')
  -> Order -- ^ "order" -  order placed for purchasing the pet
  -> OpenAPIPetstoreRequest PlaceOrder MimeJSON Order accept
placeOrder  _ order =
  _mkRequest "POST" ["/store/order"]
    `setBodyParam` order

data PlaceOrder 

-- | /Body Param/ "Order" - order placed for purchasing the pet
instance HasBodyParam PlaceOrder Order 

-- | @application/json@
instance Consumes PlaceOrder MimeJSON

-- | @application/xml@
instance Produces PlaceOrder MimeXML
-- | @application/json@
instance Produces PlaceOrder MimeJSON

