//
//  Landmark.swift
//  Landmarks
//
//  Created by Atikur Rahman on 8/20/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var category: String
    var city: String
    var state: String
    var description: String
    var isFeatured: Bool
    var isFavorite: Bool
    
    var coordinates: Coordinates
    
    var locationCoordicate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
