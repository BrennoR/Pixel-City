//
//  Constants.swift
//  pixel-city
//
//  Created by Brenno Ribeiro on 4/16/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import Foundation

let apiKey = "5f0851a99a2ff8f48130665003eef2bc"

func flickerUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
