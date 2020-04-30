//
// Model200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Model for testing model name starting with number */

@objc public class Model200Response: NSObject, Codable { 

    public var name: Int?
    public var nameNum: NSNumber? {
        get {
            return name as NSNumber?
        }
    }
    public var _class: String?

    public init(name: Int?, _class: String?) {
        self.name = name
        self._class = _class
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _class = "class"
    }

}
