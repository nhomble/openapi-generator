//
// Tag.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class Tag: NSObject, Codable { 

    public var _id: Int64?
    public var _idNum: NSNumber? {
        get {
            return _id as NSNumber?
        }
    }
    public var name: String?

    public init(_id: Int64?, name: String?) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }

}
