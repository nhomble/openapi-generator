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
class NUMBER_ONLY 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    just_number: REAL_32 
      

feature -- Change Element  
 
    set_just_number (a_name: like just_number)
        -- Set 'just_number' with 'a_name'.
      do
        just_number := a_name
      ensure
        just_number_set: just_number = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass NUMBER_ONLY%N")
        if attached just_number as l_just_number then
          Result.append ("%Njust_number:")
          Result.append (l_just_number.out)
          Result.append ("%N")    
        end  
      end
end


