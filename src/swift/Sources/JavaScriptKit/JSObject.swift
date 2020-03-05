import _CJavaScriptKit

@dynamicMemberLookup
public class JSObjectRef: Equatable {
    let id: UInt32
    init(id: UInt32) {
        self.id = id
    }

    public subscript(dynamicMember name: String) -> JSFunctionRef? {
        get { self[dynamicMember: name].function }
    }

    public subscript(dynamicMember name: String) -> JSValue {
        get { get(name) }
        set { set(name, newValue) }
    }

    public func get(_ name: String) -> JSValue {
        getJSValue(this: self, name: name)
    }

    public func set(_ name: String, _ value: JSValue) {
        setJSValue(this: self, name: name, value: value)
    }

    public func get(_ index: Int) -> JSValue {
        getJSValue(this: self, index: Int32(index))
    }

    public subscript(_ index: Int) -> JSValue {
        get { get(index) }
        set { set(index, newValue) }
    }

    public func set(_ index: Int, _ value: JSValue) {
        setJSValue(this: self, index: Int32(index), value: value)
    }

    public static func global() -> JSObjectRef {
        .init(id: _JS_Predef_Value_Global)
    }

    deinit {

    }

    public static func == (lhs: JSObjectRef, rhs: JSObjectRef) -> Bool {
        return lhs.id == rhs.id
    }
}
