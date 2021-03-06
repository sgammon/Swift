//
//  EventCollection.swift
//  Client
//
//  Created by James Clark on 12/13/17.
//

import Foundation


/**
 * Enumerates types of event collections that events may be relayed to. The simplest form of an
 * event collection is simply a string name, via the `.named(String)` enum.
 */
public enum EventCollection {
  case named(String)
  case commercial(CommercialEvent)
  case identity(IdentityEvent)

  func export() -> AnalyticsCollection {
    return AnalyticsCollection.with { collection in
      switch self {
      case .named(let name):
        collection.name = name
        collection.type = .generic
        collection.internal = name.starts(with: internalCollectionPrefix)
        break

      case .commercial(let commercialEvent):
        collection.name = commercialEvent.label
        collection.type = .commercial
        break

      case .identity(let identityEvent):
        collection.name = identityEvent.label
        collection.type = .identity
      }
    }
  }
}


/**
 * Enumerates types of commercial events. Used to specify a commercial event collection with a
 * known event type.
 */
public enum CommercialEvent {
  case impression
  case view
  case action

  var label: String {
    switch self {
    case .impression: return "IMPRESSION"
    case .view: return "VIEW"
    case .action: return "ACTION"
    }
  }
}


/**
 * Enumerates types of identity events. Used to specify a user identity event collection with a
 * known event type.
 */
public enum IdentityEvent {
  case action

  var label: String {
    switch self {
    case .action: return "ACTION"
    }
  }
}
