// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/context/Browser.proto
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

/// Specifies types of browsers or known browser engines.
public enum Analytics_Context_BrowserType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Specifies an unknown or unrecognized browser.
  case browserUnknown // = 0

  /// Specifies Google Chrome.
  case chrome // = 1

  /// Specifies Apple Safari.
  case safari // = 2

  /// Specifies Mozilla Firefox.
  case firefox // = 3

  /// Specifies Opera.
  case opera // = 4

  /// Specifies Microsoft Edge or Microsoft Internet Explorer.
  case ieOrEdge // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .browserUnknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .browserUnknown
    case 1: self = .chrome
    case 2: self = .safari
    case 3: self = .firefox
    case 4: self = .opera
    case 5: self = .ieOrEdge
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .browserUnknown: return 0
    case .chrome: return 1
    case .safari: return 2
    case .firefox: return 3
    case .opera: return 4
    case .ieOrEdge: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies a structure describing JavaScript code running in a web browser of some kind.
public struct Analytics_Context_BrowserDeviceContext: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".BrowserDeviceContext"

  /// Specifies the general browser type.
  public var browserType: Analytics_Context_BrowserType {
    get {return _storage._browserType}
    set {_uniqueStorage()._browserType = newValue}
  }

  /// Version info for the browser.
  public var version: Structs_VersionSpec {
    get {return _storage._version ?? Structs_VersionSpec()}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {_storage._version = nil}

  /// Active language, as reported by the browser.
  public var language: String {
    get {return _storage._language}
    set {_uniqueStorage()._language = newValue}
  }

  /// Raw user-agent string sent or embedded by the browser.
  public var userAgent: String {
    get {return _storage._userAgent}
    set {_uniqueStorage()._userAgent = newValue}
  }

  /// Maximum touch points for a particular browser.
  public var touchpoints: UInt32 {
    get {return _storage._touchpoints}
    set {_uniqueStorage()._touchpoints = newValue}
  }

  /// Hardware concurrency reported by the browser.
  public var hardwareConcurrency: UInt32 {
    get {return _storage._hardwareConcurrency}
    set {_uniqueStorage()._hardwareConcurrency = newValue}
  }

  /// Color depth reported by the browser.
  public var colorDepth: UInt32 {
    get {return _storage._colorDepth}
    set {_uniqueStorage()._colorDepth = newValue}
  }

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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._browserType)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._version)
        case 3: try decoder.decodeSingularStringField(value: &_storage._language)
        case 4: try decoder.decodeSingularStringField(value: &_storage._userAgent)
        case 5: try decoder.decodeSingularUInt32Field(value: &_storage._touchpoints)
        case 6: try decoder.decodeSingularUInt32Field(value: &_storage._hardwareConcurrency)
        case 7: try decoder.decodeSingularUInt32Field(value: &_storage._colorDepth)
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
      if _storage._browserType != .browserUnknown {
        try visitor.visitSingularEnumField(value: _storage._browserType, fieldNumber: 1)
      }
      if let v = _storage._version {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._language.isEmpty {
        try visitor.visitSingularStringField(value: _storage._language, fieldNumber: 3)
      }
      if !_storage._userAgent.isEmpty {
        try visitor.visitSingularStringField(value: _storage._userAgent, fieldNumber: 4)
      }
      if _storage._touchpoints != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._touchpoints, fieldNumber: 5)
      }
      if _storage._hardwareConcurrency != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._hardwareConcurrency, fieldNumber: 6)
      }
      if _storage._colorDepth != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._colorDepth, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics.context"

extension Analytics_Context_BrowserType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BROWSER_UNKNOWN"),
    1: .same(proto: "CHROME"),
    2: .same(proto: "SAFARI"),
    3: .same(proto: "FIREFOX"),
    4: .same(proto: "OPERA"),
    5: .same(proto: "IE_OR_EDGE"),
  ]
}

extension Analytics_Context_BrowserDeviceContext: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "browser_type"),
    2: .same(proto: "version"),
    3: .same(proto: "language"),
    4: .standard(proto: "user_agent"),
    5: .same(proto: "touchpoints"),
    6: .standard(proto: "hardware_concurrency"),
    7: .standard(proto: "color_depth"),
  ]

  fileprivate class _StorageClass {
    var _browserType: Analytics_Context_BrowserType = .browserUnknown
    var _version: Structs_VersionSpec? = nil
    var _language: String = String()
    var _userAgent: String = String()
    var _touchpoints: UInt32 = 0
    var _hardwareConcurrency: UInt32 = 0
    var _colorDepth: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _browserType = source._browserType
      _version = source._version
      _language = source._language
      _userAgent = source._userAgent
      _touchpoints = source._touchpoints
      _hardwareConcurrency = source._hardwareConcurrency
      _colorDepth = source._colorDepth
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Context_BrowserDeviceContext) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._browserType != other_storage._browserType {return false}
        if _storage._version != other_storage._version {return false}
        if _storage._language != other_storage._language {return false}
        if _storage._userAgent != other_storage._userAgent {return false}
        if _storage._touchpoints != other_storage._touchpoints {return false}
        if _storage._hardwareConcurrency != other_storage._hardwareConcurrency {return false}
        if _storage._colorDepth != other_storage._colorDepth {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
