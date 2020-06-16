//
//  Constants.swift
//  youtube-build
//
//  Created by Landry Argabright on 6/15/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAGEgP8AT7cr9pBjpWenP6-Ex06RScg6dE"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants .PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
