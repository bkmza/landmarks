//
//  Landmark.swift
//  Landmarks
//
//  Created by Ilya Usikov on 4/15/24.
//

import Foundation
import SwiftUI
import CoreLocation

// Hashable - to use your own custom type in a set or as the key type of a dictionary, add Hashable conformance to your type.
// The Hashable protocol inherits from the Equatable protocol, so you must also satisfy that protocol’s requirements.

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

