--  OpenAPI Petstore
--  This is a sample server Petstore server. For this sample, you can use the api key `special_key` to test the authorization filters.
--
--  The version of the OpenAPI document: 1.0.0
--  
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.3.1-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with Swagger.Streams;
package body Samples.Petstore.Clients is

   --  Add a new pet to the store
   procedure Add_Pet
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.Pet_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (Swagger.Clients.APPLICATION_JSON,
                               Swagger.Clients.APPLICATION_XML));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/pet");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Add_Pet;

   --  Deletes a pet
   procedure Delete_Pet
      (Client : in out Client_Type;
       Pet_Id : in Swagger.Long;
       Api_Key : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/pet/{petId}");
      URI.Set_Path_Param ("petId", Swagger.To_String (Pet_Id));
      Client.Call (Swagger.Clients.DELETE, URI);
   end Delete_Pet;

   --  Finds Pets by status
   --  Multiple status values can be provided with comma separated strings
   procedure Find_Pets_By_Status
      (Client : in out Client_Type;
       Status : in Swagger.UString_Vectors.Vector;
       Result : out Samples.Petstore.Models.Pet_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Add_Param ("status", Status);
      URI.Set_Path ("/pet/findByStatus");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Find_Pets_By_Status;

   --  Finds Pets by tags
   --  Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
   procedure Find_Pets_By_Tags
      (Client : in out Client_Type;
       Tags : in Swagger.UString_Vectors.Vector;
       Result : out Samples.Petstore.Models.Pet_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Add_Param ("tags", Tags);
      URI.Set_Path ("/pet/findByTags");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Find_Pets_By_Tags;

   --  Find pet by ID
   --  Returns a single pet
   procedure Get_Pet_By_Id
      (Client : in out Client_Type;
       Pet_Id : in Swagger.Long;
       Result : out Samples.Petstore.Models.Pet_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Set_Path ("/pet/{petId}");
      URI.Set_Path_Param ("petId", Swagger.To_String (Pet_Id));
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Get_Pet_By_Id;

   --  Update an existing pet
   procedure Update_Pet
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.Pet_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (Swagger.Clients.APPLICATION_JSON,
                               Swagger.Clients.APPLICATION_XML));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/pet");
      Client.Call (Swagger.Clients.PUT, URI, Req);
   end Update_Pet;

   --  Updates a pet in the store with form data
   procedure Update_Pet_With_Form
      (Client : in out Client_Type;
       Pet_Id : in Swagger.Long;
       Name : in Swagger.Nullable_UString;
       Status : in Swagger.Nullable_UString) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_FORM));
      Req.Stream.Write_Entity ("name", Name);
      Req.Stream.Write_Entity ("status", Status);

      URI.Set_Path ("/pet/{petId}");
      URI.Set_Path_Param ("petId", Swagger.To_String (Pet_Id));
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Update_Pet_With_Form;

   --  uploads an image
   procedure Upload_File
      (Client : in out Client_Type;
       Pet_Id : in Swagger.Long;
       Additional_Metadata : in Swagger.Nullable_UString;
       File : in Swagger.File_Part_Type;
       Result : out Samples.Petstore.Models.ApiResponse_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((1 => Swagger.Clients.APPLICATION_JSON));
      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_FORM));
      Req.Stream.Write_Entity ("additionalMetadata", Additional_Metadata);
      Req.Stream.Write_Entity ("file", File);

      URI.Set_Path ("/pet/{petId}/uploadImage");
      URI.Set_Path_Param ("petId", Swagger.To_String (Pet_Id));
      Client.Call (Swagger.Clients.POST, URI, Req, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Upload_File;

   --  Delete purchase order by ID
   --  For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
   procedure Delete_Order
      (Client : in out Client_Type;
       Order_Id : in Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/store/order/{orderId}");
      URI.Set_Path_Param ("orderId", Order_Id);
      Client.Call (Swagger.Clients.DELETE, URI);
   end Delete_Order;

   --  Returns pet inventories by status
   --  Returns a map of status codes to quantities
   procedure Get_Inventory
      (Client : in out Client_Type;
       Result : out Swagger.Integer_Map) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((1 => Swagger.Clients.APPLICATION_JSON));

      URI.Set_Path ("/store/inventory");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Swagger.Streams.Deserialize (Reply, "", Result);
   end Get_Inventory;

   --  Find purchase order by ID
   --  For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
   procedure Get_Order_By_Id
      (Client : in out Client_Type;
       Order_Id : in Swagger.Long;
       Result : out Samples.Petstore.Models.Order_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Set_Path ("/store/order/{orderId}");
      URI.Set_Path_Param ("orderId", Swagger.To_String (Order_Id));
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Get_Order_By_Id;

   --  Place an order for a pet
   procedure Place_Order
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.Order_Type;
       Result : out Samples.Petstore.Models.Order_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));
      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_JSON));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/store/order");
      Client.Call (Swagger.Clients.POST, URI, Req, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Place_Order;

   --  Create user
   --  This can only be done by the logged in user.
   procedure Create_User
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_JSON));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/user");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Create_User;

   --  Creates list of users with given input array
   procedure Create_Users_With_Array_Input
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.User_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_JSON));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/user/createWithArray");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Create_Users_With_Array_Input;

   --  Creates list of users with given input array
   procedure Create_Users_With_List_Input
      (Client : in out Client_Type;
       P_Body : in Samples.Petstore.Models.User_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_JSON));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/user/createWithList");
      Client.Call (Swagger.Clients.POST, URI, Req);
   end Create_Users_With_List_Input;

   --  Delete user
   --  This can only be done by the logged in user.
   procedure Delete_User
      (Client : in out Client_Type;
       Username : in Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/user/{username}");
      URI.Set_Path_Param ("username", Username);
      Client.Call (Swagger.Clients.DELETE, URI);
   end Delete_User;

   --  Get user by user name
   procedure Get_User_By_Name
      (Client : in out Client_Type;
       Username : in Swagger.UString;
       Result : out Samples.Petstore.Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Set_Path ("/user/{username}");
      URI.Set_Path_Param ("username", Username);
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Samples.Petstore.Models.Deserialize (Reply, "", Result);
   end Get_User_By_Name;

   --  Logs user into the system
   procedure Login_User
      (Client : in out Client_Type;
       Username : in Swagger.UString;
       Password : in Swagger.UString;
       Result : out Swagger.UString) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.APPLICATION_XML,
                          Swagger.Clients.APPLICATION_JSON));

      URI.Add_Param ("username", Username);
      URI.Add_Param ("password", Password);
      URI.Set_Path ("/user/login");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      Swagger.Streams.Deserialize (Reply, "", Result);
   end Login_User;

   --  Logs out current logged in user session
   procedure Logout_User
      (Client : in out Client_Type) is
      URI   : Swagger.Clients.URI_Type;
   begin


      URI.Set_Path ("/user/logout");
      Client.Call (Swagger.Clients.GET, URI);
   end Logout_User;

   --  Updated user
   --  This can only be done by the logged in user.
   procedure Update_User
      (Client : in out Client_Type;
       Username : in Swagger.UString;
       P_Body : in Samples.Petstore.Models.User_Type) is
      URI   : Swagger.Clients.URI_Type;
      Req   : Swagger.Clients.Request_Type;
   begin

      Client.Initialize (Req, (1 => Swagger.Clients.APPLICATION_JSON));
      Samples.Petstore.Models.Serialize (Req.Stream, "", P_Body);

      URI.Set_Path ("/user/{username}");
      URI.Set_Path_Param ("username", Username);
      Client.Call (Swagger.Clients.PUT, URI, Req);
   end Update_User;
end Samples.Petstore.Clients;
