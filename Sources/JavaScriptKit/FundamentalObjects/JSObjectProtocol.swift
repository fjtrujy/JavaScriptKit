//
//  JSObjectProtocol.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 30/12/2021.
//

import _CJavaScriptKit

public protocol JSObjectProtocol {
    var id: JavaScriptObjectRef { get }
    
    @_disfavoredOverload
    subscript(_ name: String) -> ((ConvertibleToJSValue...) -> JSValue)? { get }
    
    @_disfavoredOverload
    subscript(dynamicMember name: String) -> ((ConvertibleToJSValue...) -> JSValue)? { get }
    
    @_disfavoredOverload
    subscript(dynamicMember name: String) -> JSValue { get set }
    
    @_disfavoredOverload
    subscript(_ name: String) -> JSValue { get set }
    
    @_disfavoredOverload
    subscript(_ name: JSString) -> JSValue { get set }
    
    @_disfavoredOverload
    subscript(_ index: Int) -> JSValue { get set }
    
    var `throwing`: JSThrowingObject { get }
    
    func isInstanceOf(_ constructor: JSFunction) -> Bool
    
    func jsValue() -> JSValue
}
