// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/commerce/ProductAnalytics.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Specifies the types of actions that a user may take on a product.
public enum Analytics_Product_ProductAction: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The user viewed a product. Product views are implemented under the hood as 'VIEW' actions.
  case view // = 0

  /// The user shared a product on social media, or via email or SMS to a friend.
  case share // = 1

  /// The user favorited a product.
  case favorite // = 2

  /// The user compared two or more products.
  case compare // = 3

  /// The user added this product to their cart.
  case cart // = 4

  /// The user purchased a product.
  case purchase // = 5

  /// The user subscribed to updates for a product.
  case subscribe // = 6

  /// The user magnified media for a product.
  case zoom // = 7

  /// The user examined reports or lab test results for a product.
  case reports // = 8

  /// The user made use of the "similar products" UI while viewing this product.
  case similar // = 9
  case UNRECOGNIZED(Int)

  public init() {
    self = .view
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .view
    case 1: self = .share
    case 2: self = .favorite
    case 3: self = .compare
    case 4: self = .cart
    case 5: self = .purchase
    case 6: self = .subscribe
    case 7: self = .zoom
    case 8: self = .reports
    case 9: self = .similar
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .view: return 0
    case .share: return 1
    case .favorite: return 2
    case .compare: return 3
    case .cart: return 4
    case .purchase: return 5
    case .subscribe: return 6
    case .zoom: return 7
    case .reports: return 8
    case .similar: return 9
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies that a product was presented, alongside one or more other products in a master-style view, as a candidate
/// for detail information to an end user.
public struct Analytics_Product_Impression: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Impression"

  /// Key for the product that was viewed.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// If the master view was filtered in any way, this flag is set.
  public var filtered: Bool {
    get {return _storage._filtered}
    set {_uniqueStorage()._filtered = newValue}
  }

  /// If the master view was sorted in any way, this flag is set.
  public var sorted: Bool {
    get {return _storage._sorted}
    set {_uniqueStorage()._sorted = newValue}
  }

  /// Timestamp for when this impression occurred.
  public var occurred: Temporal_Instant {
    get {return _storage._occurred ?? Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_storage._occurred = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeSingularBoolField(value: &_storage._filtered)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._sorted)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._filtered != false {
        try visitor.visitSingularBoolField(value: _storage._filtered, fieldNumber: 2)
      }
      if _storage._sorted != false {
        try visitor.visitSingularBoolField(value: _storage._sorted, fieldNumber: 3)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies that an end-user viewed detail information about a product.
public struct Analytics_Product_View: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".View"

  /// Key for the product that was viewed.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// Whether this was a user-initiated view, or a default view.
  public var interactive: Bool {
    get {return _storage._interactive}
    set {_uniqueStorage()._interactive = newValue}
  }

  /// Timestamp for when this view occurred.
  public var occurred: Temporal_Instant {
    get {return _storage._occurred ?? Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_storage._occurred = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeSingularBoolField(value: &_storage._interactive)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._interactive != false {
        try visitor.visitSingularBoolField(value: _storage._interactive, fieldNumber: 2)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// An action that was taken affirmatively by a user on a particular product.
public struct Analytics_Product_Action: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Action"

  /// Key for the product that action was taken on.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// The action that was taken on the product.
  public var verb: Analytics_Product_ProductAction {
    get {return _storage._verb}
    set {_uniqueStorage()._verb = newValue}
  }

  /// Timestamp for when this action occurred.
  public var occurred: Temporal_Instant {
    get {return _storage._occurred ?? Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_storage._occurred = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._verb)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._verb != .view {
        try visitor.visitSingularEnumField(value: _storage._verb, fieldNumber: 2)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics.product"

extension Analytics_Product_ProductAction: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VIEW"),
    1: .same(proto: "SHARE"),
    2: .same(proto: "FAVORITE"),
    3: .same(proto: "COMPARE"),
    4: .same(proto: "CART"),
    5: .same(proto: "PURCHASE"),
    6: .same(proto: "SUBSCRIBE"),
    7: .same(proto: "ZOOM"),
    8: .same(proto: "REPORTS"),
    9: .same(proto: "SIMILAR"),
  ]
}

extension Analytics_Product_Impression: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "filtered"),
    3: .same(proto: "sorted"),
    4: .same(proto: "occurred"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil
    var _filtered: Bool = false
    var _sorted: Bool = false
    var _occurred: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _filtered = source._filtered
      _sorted = source._sorted
      _occurred = source._occurred
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Product_Impression) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._filtered != other_storage._filtered {return false}
        if _storage._sorted != other_storage._sorted {return false}
        if _storage._occurred != other_storage._occurred {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_Product_View: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "interactive"),
    3: .same(proto: "occurred"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil
    var _interactive: Bool = false
    var _occurred: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _interactive = source._interactive
      _occurred = source._occurred
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Product_View) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._interactive != other_storage._interactive {return false}
        if _storage._occurred != other_storage._occurred {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_Product_Action: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "verb"),
    3: .same(proto: "occurred"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil
    var _verb: Analytics_Product_ProductAction = .view
    var _occurred: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _verb = source._verb
      _occurred = source._occurred
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Product_Action) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._verb != other_storage._verb {return false}
        if _storage._occurred != other_storage._occurred {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}