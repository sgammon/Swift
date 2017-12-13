// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/commerce/OrderAnalytics.proto
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

/// Specifies actions that may be taken on an order.
public enum Analytics_Order_OrderAction: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The user added to their cart.
  case addToCart // = 0

  /// The user removed something from their cart.
  case removeFromCart // = 1

  /// The user restored a previous cart.
  case restoreCart // = 2

  /// The user verified themselves as a member, to place an order.
  case verifyMember // = 3

  /// The user submitted an order.
  case orderSubmit // = 4

  /// The user queries status for an order.
  case orderStatus // = 5

  /// The user cancelled an order.
  case orderCancel // = 6

  /// An order was accepted by a back-office user.
  case orderAccepted // = 7

  /// An order was rejected by a back-office user.
  case orderRejected // = 8

  /// An order was set to in-progress by a back-office user.
  case orderInProgerss // = 9

  /// An order left for delivery.
  case orderOutForDelivery // = 10

  /// An order was fulfilled and may now be considered complete.
  case orderFulfilled // = 11
  case UNRECOGNIZED(Int)

  public init() {
    self = .addToCart
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .addToCart
    case 1: self = .removeFromCart
    case 2: self = .restoreCart
    case 3: self = .verifyMember
    case 4: self = .orderSubmit
    case 5: self = .orderStatus
    case 6: self = .orderCancel
    case 7: self = .orderAccepted
    case 8: self = .orderRejected
    case 9: self = .orderInProgerss
    case 10: self = .orderOutForDelivery
    case 11: self = .orderFulfilled
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .addToCart: return 0
    case .removeFromCart: return 1
    case .restoreCart: return 2
    case .verifyMember: return 3
    case .orderSubmit: return 4
    case .orderStatus: return 5
    case .orderCancel: return 6
    case .orderAccepted: return 7
    case .orderRejected: return 8
    case .orderInProgerss: return 9
    case .orderOutForDelivery: return 10
    case .orderFulfilled: return 11
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies an order action event, wherein a user or backoffice admin has affirmatively taken some action upon or
/// regarding a commercial order to be submitted or previously submitted by an end user.
public struct Analytics_Order_Action: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Action"

  /// Order being referenced for action, if any.
  public var orderKey: Commerce_OrderKey {
    get {return _storage._orderKey ?? Commerce_OrderKey()}
    set {_uniqueStorage()._orderKey = newValue}
  }
  /// Returns true if `orderKey` has been explicitly set.
  public var hasOrderKey: Bool {return _storage._orderKey != nil}
  /// Clears the value of `orderKey`. Subsequent reads from it will return its default value.
  public mutating func clearOrderKey() {_storage._orderKey = nil}

  /// Action that was taken upon or regarding the order.
  public var verb: Analytics_Order_OrderAction {
    get {return _storage._verb}
    set {_uniqueStorage()._verb = newValue}
  }

  /// Customer that took this action.
  public var customer: Commerce_Customer {
    get {return _storage._customer ?? Commerce_Customer()}
    set {_uniqueStorage()._customer = newValue}
  }
  /// Returns true if `customer` has been explicitly set.
  public var hasCustomer: Bool {return _storage._customer != nil}
  /// Clears the value of `customer`. Subsequent reads from it will return its default value.
  public mutating func clearCustomer() {_storage._customer = nil}

  /// Specifies when this view event occurred.
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._orderKey)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._verb)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._customer)
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
      if let v = _storage._orderKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._verb != .addToCart {
        try visitor.visitSingularEnumField(value: _storage._verb, fieldNumber: 2)
      }
      if let v = _storage._customer {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics.order"

extension Analytics_Order_OrderAction: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADD_TO_CART"),
    1: .same(proto: "REMOVE_FROM_CART"),
    2: .same(proto: "RESTORE_CART"),
    3: .same(proto: "VERIFY_MEMBER"),
    4: .same(proto: "ORDER_SUBMIT"),
    5: .same(proto: "ORDER_STATUS"),
    6: .same(proto: "ORDER_CANCEL"),
    7: .same(proto: "ORDER_ACCEPTED"),
    8: .same(proto: "ORDER_REJECTED"),
    9: .same(proto: "ORDER_IN_PROGERSS"),
    10: .same(proto: "ORDER_OUT_FOR_DELIVERY"),
    11: .same(proto: "ORDER_FULFILLED"),
  ]
}

extension Analytics_Order_Action: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "order_key"),
    2: .same(proto: "verb"),
    3: .same(proto: "customer"),
    4: .same(proto: "occurred"),
  ]

  fileprivate class _StorageClass {
    var _orderKey: Commerce_OrderKey? = nil
    var _verb: Analytics_Order_OrderAction = .addToCart
    var _customer: Commerce_Customer? = nil
    var _occurred: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _orderKey = source._orderKey
      _verb = source._verb
      _customer = source._customer
      _occurred = source._occurred
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Order_Action) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._orderKey != other_storage._orderKey {return false}
        if _storage._verb != other_storage._verb {return false}
        if _storage._customer != other_storage._customer {return false}
        if _storage._occurred != other_storage._occurred {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}