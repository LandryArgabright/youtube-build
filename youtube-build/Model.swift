//
//  Model.swift
//  youtube-build
//
//  Created by Landry Argabright on 6/15/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import Foundation


class Model {
    
    func getVideos() {
        
        // Create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a Data Task from the URLSession Object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check for errors
            if error != nil || data == nil{
                return
            }
            
            do {
                // Parse data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
            
                let response = try decoder.decode( Response.self, from: data!)
            
                dump(response)
                
            }
            catch {
                
                
            }
        }
        
        // Kick of the task
        dataTask.resume()
        
    }
}
