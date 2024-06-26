//
//  RMLocationTableViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Itamar Axelrad on 07/05/2024.
//

import Foundation

struct RMLocationTableViewCellViewModel: Hashable, Equatable {

    private let location: RMLocation

    init(location: RMLocation) {
        self.location = location
    }

    public var name: String {
        return location.name
    }

    public var type: String {
        return "Type: " + location.type
    }

    public var dimension: String {
        return "Dimension: " + location.dimension
    }

    static func == (lhs: RMLocationTableViewCellViewModel, rhs: RMLocationTableViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.location.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(location.id)
        hasher.combine(dimension)
        hasher.combine(type)
    }
}
