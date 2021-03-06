// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/pricing/SaleDescriptor.proto
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

public enum Structs_Pricing_SaleType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case percentageOff // = 0
  case bogo // = 1
  case loyalty // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .percentageOff
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .percentageOff
    case 1: self = .bogo
    case 2: self = .loyalty
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .percentageOff: return 0
    case .bogo: return 1
    case .loyalty: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

public struct Structs_Pricing_PercentageDiscount: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PercentageDiscount"

  public var discount: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 20: try decoder.decodeSingularUInt32Field(value: &self.discount)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.discount != 0 {
      try visitor.visitSingularUInt32Field(value: self.discount, fieldNumber: 20)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

public struct Structs_Pricing_BOGODiscount: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".BOGODiscount"

  public var trigger: UInt32 = 0

  public var reward: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 21: try decoder.decodeSingularUInt32Field(value: &self.trigger)
      case 22: try decoder.decodeSingularUInt32Field(value: &self.reward)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.trigger != 0 {
      try visitor.visitSingularUInt32Field(value: self.trigger, fieldNumber: 21)
    }
    if self.reward != 0 {
      try visitor.visitSingularUInt32Field(value: self.reward, fieldNumber: 22)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

public struct Structs_Pricing_LoyaltyDiscount: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".LoyaltyDiscount"

  public var trigger: UInt32 = 0

  public var reward: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 23: try decoder.decodeSingularUInt32Field(value: &self.trigger)
      case 24: try decoder.decodeSingularUInt32Field(value: &self.reward)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.trigger != 0 {
      try visitor.visitSingularUInt32Field(value: self.trigger, fieldNumber: 23)
    }
    if self.reward != 0 {
      try visitor.visitSingularUInt32Field(value: self.reward, fieldNumber: 24)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

public struct Structs_Pricing_SaleDescriptor: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SaleDescriptor"

  /// sale metadata
  public var type: Structs_Pricing_SaleType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  public var effective: Temporal_Instant {
    get {return _storage._effective ?? Temporal_Instant()}
    set {_uniqueStorage()._effective = newValue}
  }
  /// Returns true if `effective` has been explicitly set.
  public var hasEffective: Bool {return _storage._effective != nil}
  /// Clears the value of `effective`. Subsequent reads from it will return its default value.
  public mutating func clearEffective() {_storage._effective = nil}

  public var expiration: Temporal_Instant {
    get {return _storage._expiration ?? Temporal_Instant()}
    set {_uniqueStorage()._expiration = newValue}
  }
  /// Returns true if `expiration` has been explicitly set.
  public var hasExpiration: Bool {return _storage._expiration != nil}
  /// Clears the value of `expiration`. Subsequent reads from it will return its default value.
  public mutating func clearExpiration() {_storage._expiration = nil}

  /// sale amount and trigger properties
  public var sale: OneOf_Sale? {
    get {return _storage._sale}
    set {_uniqueStorage()._sale = newValue}
  }

  public var percentageOff: Structs_Pricing_PercentageDiscount {
    get {
      if case .percentageOff(let v)? = _storage._sale {return v}
      return Structs_Pricing_PercentageDiscount()
    }
    set {_uniqueStorage()._sale = .percentageOff(newValue)}
  }

  public var bogo: Structs_Pricing_BOGODiscount {
    get {
      if case .bogo(let v)? = _storage._sale {return v}
      return Structs_Pricing_BOGODiscount()
    }
    set {_uniqueStorage()._sale = .bogo(newValue)}
  }

  public var loyalty: Structs_Pricing_LoyaltyDiscount {
    get {
      if case .loyalty(let v)? = _storage._sale {return v}
      return Structs_Pricing_LoyaltyDiscount()
    }
    set {_uniqueStorage()._sale = .loyalty(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// sale amount and trigger properties
  public enum OneOf_Sale: Equatable {
    case percentageOff(Structs_Pricing_PercentageDiscount)
    case bogo(Structs_Pricing_BOGODiscount)
    case loyalty(Structs_Pricing_LoyaltyDiscount)

    public static func ==(lhs: Structs_Pricing_SaleDescriptor.OneOf_Sale, rhs: Structs_Pricing_SaleDescriptor.OneOf_Sale) -> Bool {
      switch (lhs, rhs) {
      case (.percentageOff(let l), .percentageOff(let r)): return l == r
      case (.bogo(let l), .bogo(let r)): return l == r
      case (.loyalty(let l), .loyalty(let r)): return l == r
      default: return false
      }
    }
  }

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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._effective)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._expiration)
        case 4:
          var v: Structs_Pricing_PercentageDiscount?
          if let current = _storage._sale {
            try decoder.handleConflictingOneOf()
            if case .percentageOff(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._sale = .percentageOff(v)}
        case 5:
          var v: Structs_Pricing_BOGODiscount?
          if let current = _storage._sale {
            try decoder.handleConflictingOneOf()
            if case .bogo(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._sale = .bogo(v)}
        case 6:
          var v: Structs_Pricing_LoyaltyDiscount?
          if let current = _storage._sale {
            try decoder.handleConflictingOneOf()
            if case .loyalty(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._sale = .loyalty(v)}
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
      if _storage._type != .percentageOff {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._effective {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._expiration {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      switch _storage._sale {
      case .percentageOff(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case .bogo(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .loyalty(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "structs.pricing"

extension Structs_Pricing_SaleType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PERCENTAGE_OFF"),
    1: .same(proto: "BOGO"),
    2: .same(proto: "LOYALTY"),
  ]
}

extension Structs_Pricing_PercentageDiscount: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    20: .same(proto: "discount"),
  ]

  public func _protobuf_generated_isEqualTo(other: Structs_Pricing_PercentageDiscount) -> Bool {
    if self.discount != other.discount {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Structs_Pricing_BOGODiscount: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    21: .same(proto: "trigger"),
    22: .same(proto: "reward"),
  ]

  public func _protobuf_generated_isEqualTo(other: Structs_Pricing_BOGODiscount) -> Bool {
    if self.trigger != other.trigger {return false}
    if self.reward != other.reward {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Structs_Pricing_LoyaltyDiscount: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    23: .same(proto: "trigger"),
    24: .same(proto: "reward"),
  ]

  public func _protobuf_generated_isEqualTo(other: Structs_Pricing_LoyaltyDiscount) -> Bool {
    if self.trigger != other.trigger {return false}
    if self.reward != other.reward {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Structs_Pricing_SaleDescriptor: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "effective"),
    3: .same(proto: "expiration"),
    4: .standard(proto: "percentage_off"),
    5: .same(proto: "bogo"),
    6: .same(proto: "loyalty"),
  ]

  fileprivate class _StorageClass {
    var _type: Structs_Pricing_SaleType = .percentageOff
    var _effective: Temporal_Instant? = nil
    var _expiration: Temporal_Instant? = nil
    var _sale: Structs_Pricing_SaleDescriptor.OneOf_Sale?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _effective = source._effective
      _expiration = source._expiration
      _sale = source._sale
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Structs_Pricing_SaleDescriptor) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._effective != other_storage._effective {return false}
        if _storage._expiration != other_storage._expiration {return false}
        if _storage._sale != other_storage._sale {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
