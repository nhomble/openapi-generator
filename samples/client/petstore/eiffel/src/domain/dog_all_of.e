note
 description:"[
		OpenAPI Petstore
 		This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
  		The version of the OpenAPI document: 1.0.0
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class DOG_ALL_OF 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    breed: detachable STRING_32 
      

feature -- Change Element  
 
    set_breed (a_name: like breed)
        -- Set 'breed' with 'a_name'.
      do
        breed := a_name
      ensure
        breed_set: breed = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass DOG_ALL_OF%N")
        if attached breed as l_breed then
          Result.append ("%Nbreed:")
          Result.append (l_breed.out)
          Result.append ("%N")    
        end  
      end
end


