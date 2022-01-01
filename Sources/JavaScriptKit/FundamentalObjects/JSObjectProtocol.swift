//
//  JSObjectProtocol.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 30/12/2021.
//

import _CJavaScriptKit

@dynamicMemberLookup
public protocol JSObjectProtocol: ConvertibleToJSValue, CustomStringConvertible {
    var id: JavaScriptObjectRef { get }
    
    subscript(_ name: String) -> ((ConvertibleToJSValue...) -> JSValue)? { get }
    subscript(dynamicMember name: String) -> ((ConvertibleToJSValue...) -> JSValue)? { get }
    subscript(dynamicMember name: String) -> JSValue { get set }
    subscript(_ name: String) -> JSValue { get set }
    subscript(_ name: JSString) -> JSValue { get set }
    subscript(_ index: Int) -> JSValue { get set }
    
    var `throwing`: JSThrowingObject { get }
    
    func isInstanceOf(_ constructor: JSFunction) -> Bool
    
    func jsValue() -> JSValue
}


@dynamicMemberLookup
public protocol JSThrowingObjectProtocol {
    init(_ base: JSObjectProtocol)

    subscript(_ name: String) -> ((ConvertibleToJSValue...) throws -> JSValue)? {get }
    subscript(dynamicMember name: String) -> ((ConvertibleToJSValue...) throws -> JSValue)? { get }
}
