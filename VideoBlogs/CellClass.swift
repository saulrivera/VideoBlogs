//
//  CellClass.swift
//  practica3
//
//  Created by Saul Rivera on 7/13/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import Foundation

class Cell {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _labelVideo: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var labelVideo: String {
        return _labelVideo
    }
    
    init(imageURL: String, videoURL: String, labelVideo: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _labelVideo = labelVideo
    }
    
}
