//
//  ViewController.swift
//  youtube-build
//
//  Created by Landry Argabright on 6/15/20.
//  Copyright © 2020 Landry Argabright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        
    }


}

