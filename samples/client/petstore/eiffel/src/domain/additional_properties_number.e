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
class ADDITIONAL_PROPERTIES_NUMBER 

inherit

  ANY
      redefine
          out 
      select
          out  
      end

  STRING_TABLE [REAL_32] 
      rename
          out as out_,
          is_equal as is_equal_,
          copy as copy_
      select
          is_equal_,
          copy_     
      end   

feature --Access

    name: detachable STRING_32 
      

feature -- Change Element  
 
    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append(out_)
        Result.append("%Nclass ADDITIONAL_PROPERTIES_NUMBER%N")
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")    
        end  
      end
end


