//
//  Video.swift
//  youtube-build
//
//  Created by Landry Argabright on 6/15/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var publishDate = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        // Keys from JSON matching to variables
        case publishDate = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoID = "videoId"
        
    }
    
    init (from decoder: Decoder) throws  {
        
        // JSON decoding instructions
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetConatiner = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet )
        
        // Parse Title
        self.title = try snippetConatiner.decode(String.self, forKey: .title)
        
        // Parse Description
        self.description = try snippetConatiner.decode(String.self, forKey: .description)
        
        // Parse Publish Date
        self.publishDate = try snippetConatiner.decode(Date.self, forKey: .publishDate)
        
        // Parse Thumbnails
        let thumbnailContainer = try snippetConatiner.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        // Nested Container called High
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse VideoId
        let resourceIDContainer = try snippetConatiner.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoID = try resourceIDContainer.decode(String.self, forKey: .videoID)
        
    }
}
