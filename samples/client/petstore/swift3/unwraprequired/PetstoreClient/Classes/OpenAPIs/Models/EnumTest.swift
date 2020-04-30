//
// EnumTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class EnumTest: JSONEncodable {

    public enum EnumString: String { 
        case upper = "UPPER"
        case lower = "lower"
        case empty = ""
    }
    public enum EnumStringRequired: String { 
        case upper = "UPPER"
        case lower = "lower"
        case empty = ""
    }
    public enum EnumInteger: Int32 { 
        case _1 = 1
        case number1 = -1
    }
    public enum EnumNumber: Double { 
        case _11 = 1.1
        case number12 = -1.2
    }
    public var enumString: EnumString?
    public var enumStringRequired: EnumStringRequired
    public var enumInteger: EnumInteger?
    public var enumNumber: EnumNumber?
    public var outerEnum: OuterEnum?


    public init(enumString: EnumString?=nil, enumStringRequired: EnumStringRequired, enumInteger: EnumInteger?=nil, enumNumber: EnumNumber?=nil, outerEnum: OuterEnum?=nil) {
        self.enumString = enumString
        self.enumStringRequired = enumStringRequired
        self.enumInteger = enumInteger
        self.enumNumber = enumNumber
        self.outerEnum = outerEnum
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["enum_string"] = self.enumString?.rawValue
        nillableDictionary["enum_string_required"] = self.enumStringRequired.rawValue
        nillableDictionary["enum_integer"] = self.enumInteger?.rawValue
        nillableDictionary["enum_number"] = self.enumNumber?.rawValue
        nillableDictionary["outerEnum"] = self.outerEnum?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

