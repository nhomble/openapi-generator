//
// ArrayOfNumberOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct ArrayOfNumberOnly: Codable { 


    internal var arrayNumber: [Double]?

    internal init(arrayNumber: [Double]?) {
        self.arrayNumber = arrayNumber
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable { 
        case arrayNumber = "ArrayNumber"
    }

}
