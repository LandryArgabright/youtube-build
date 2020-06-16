//
//  ViewController.swift
//  youtube-build
//
//  Created by Landry Argabright on 6/15/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

    //@IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var TableView: UITableView!
    
    
    var model = Model()
    var videos = [Video]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set itself as datasource and delegate
        TableView.dataSource = self     // self = ViewController
        TableView.delegate = self   // self = ViewController
        
        // Set itself as the delegate of the model
        model.delegate = self
        
        // Do any additional setup after loading the view.
        model.getVideos()
        
        
    }
    
    // MARK: -- Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        // Set the return videos to our videos property
        self.videos = videos
        
        
        // Refresh the TableView
        TableView.reloadData()
    
    }
    
    
    // MARK: - TableView Methods
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TableView.dequeueReusableCell(withIdentifier: Constants.VideoCell_ID, for: indexPath) as! VideoTableViewCell
        
        // Configure cell with data
        let video = self.videos[indexPath.row]
        cell.setCell(video)
        
        // Return the cell
        return cell
        
    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }

}

