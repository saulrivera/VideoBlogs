//
//  MainVC.swift
//  practica3
//
//  Created by Saul Rivera on 7/13/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var container = [Cell]()

    override func viewDidLoad() {
        
        let p1 = Cell(imageURL: "https://pbs.twimg.com/profile_images/587949417577066499/3uCD4xxY.jpg",
                      videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZorehxjL43E\" frameborder=\"0\" allowfullscreen></iframe>",
                      labelVideo: "Hello it's me")
        let p2 = Cell(imageURL: "https://pbs.twimg.com/profile_images/641353910561566720/VSxsyxs7.jpg",
                      videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZorehxjL43E\" frameborder=\"0\" allowfullscreen></iframe>",
                      labelVideo: "Baby")
        container.append(p1)
        container.append(p2)
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellActive = tableView.dequeueReusableCell(withIdentifier: "ViewCell", for: indexPath) as? TableViewCell {
           let cellWorking = container[indexPath.row]
            cellActive.update(cell: cellWorking)
            return cellActive
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return container.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = container[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: data)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let send = sender as? Cell {
                destination.cell = send
            }
        }
    }


}

