//
//  File.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 01/01/2022.
//

import Foundation


public protocol JSFunctionProtocol: JSObjectProtocol {
    @discardableResult
    func callAsFunction(this: JSObjectProtocol?, arguments: [ConvertibleToJSValue]) -> JSValue
    
    @discardableResult
    func callAsFunction(this: JSObjectProtocol?, _ arguments: ConvertibleToJSValue...) -> JSValue
    
    func new(arguments: [ConvertibleToJSValue]) -> JSObjectProtocol
    
    func new(_ arguments: ConvertibleToJSValue...) -> JSObjectProtocol
}
