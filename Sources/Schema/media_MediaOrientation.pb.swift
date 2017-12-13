// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: media/MediaOrientation.proto
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

public enum Media_MediaOrientation: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case up // = 0
  case down // = 1
  case left // = 2
  case right // = 3
  case upMirrored // = 4
  case downMirrored // = 5
  case leftMirrored // = 6
  case rightMirrored // = 7
  case UNRECOGNIZED(Int)

  public init() {
    self = .up
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .up
    case 1: self = .down
    case 2: self = .left
    case 3: self = .right
    case 4: self = .upMirrored
    case 5: self = .downMirrored
    case 6: self = .leftMirrored
    case 7: self = .rightMirrored
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .up: return 0
    case .down: return 1
    case .left: return 2
    case .right: return 3
    case .upMirrored: return 4
    case .downMirrored: return 5
    case .leftMirrored: return 6
    case .rightMirrored: return 7
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Media_MediaOrientation: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UP"),
    1: .same(proto: "DOWN"),
    2: .same(proto: "LEFT"),
    3: .same(proto: "RIGHT"),
    4: .same(proto: "UP_MIRRORED"),
    5: .same(proto: "DOWN_MIRRORED"),
    6: .same(proto: "LEFT_MIRRORED"),
    7: .same(proto: "RIGHT_MIRRORED"),
  ]
}