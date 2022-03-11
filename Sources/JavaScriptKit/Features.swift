enum LibraryFeatures {
    static let weakRefs: Int32 = 1 << 0
}

@_cdecl("_library_features")
func _library_features() -> Int32 {
    .zero
    // Disabling JAVASCRIPTKIT_WITHOUT_WEAKREFS till they fix https://bugs.swift.org/browse/SR-15611
//    var features: Int32 = 0
//#if !JAVASCRIPTKIT_WITHOUT_WEAKREFS
//    features |= LibraryFeatures.weakRefs
//#endif
//    return features
}
