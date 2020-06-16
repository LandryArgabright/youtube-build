//
//  cacheManager.swift
//  youtube-build
//
//  Created by Ray Argabright on 6/16/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cacheDict = [String:Data]()
    
    static func setVideoCache (_ url: String, _ data: Data?) {
        
        // use Url as key
        cacheDict[url] = data
        
    }
    
    static func getVideoCache (_ url: String) -> Data? {
        
        // Retrieve data for specific url
        return cacheDict[url]
        
    }
    
}
