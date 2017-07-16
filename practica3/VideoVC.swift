//
//  VideoVC.swift
//  practica3
//
//  Created by Saul Rivera on 7/13/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var labelVideo: UILabel!
    
    private var _cell: Cell!
    
    var cell: Cell {
        get {
            return _cell
        } set {
            _cell = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        labelVideo.text = _cell.labelVideo
        webView.loadHTMLString(_cell.videoURL, baseURL: nil)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
