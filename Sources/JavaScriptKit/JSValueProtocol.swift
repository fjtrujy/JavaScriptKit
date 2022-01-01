//
//  JSValueProtocol.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 30/12/2021.
//

import Foundation

@dynamicMemberLookup
public protocol JSValueProtocol: CustomStringConvertible {
    var boolean: Bool? { get }
    var string: String? { get }
    var jsString: JSString? { get }
    var number: Double? { get }
    var object: JSObjectProtocol? { get set }
    var function: JSFunction? { get }
    var isNull: Bool { get }
    var isUndefined: Bool { get }

    subscript(dynamicMember name: String) -> ((ConvertibleToJSValue...) -> JSValue) { get }
    subscript(dynamicMember name: String) -> JSValue { get set }
    subscript(_ index: Int) -> JSValue { get set }
}
