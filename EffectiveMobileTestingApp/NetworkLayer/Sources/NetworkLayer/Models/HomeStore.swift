//
// HomeStore.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HomeStore: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var isNew: Bool?
    public var title: String?
    public var subtitle: String?
    public var picture: String?
    public var isBuy: Bool?

    public init(id: Int? = nil, isNew: Bool? = nil, title: String? = nil, subtitle: String? = nil, picture: String? = nil, isBuy: Bool? = nil) {
        self.id = id
        self.isNew = isNew
        self.title = title
        self.subtitle = subtitle
        self.picture = picture
        self.isBuy = isBuy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case isNew = "is_new"
        case title
        case subtitle
        case picture
        case isBuy = "is_buy"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isNew, forKey: .isNew)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(subtitle, forKey: .subtitle)
        try container.encodeIfPresent(picture, forKey: .picture)
        try container.encodeIfPresent(isBuy, forKey: .isBuy)
    }
}
