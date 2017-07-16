//
//  TableViewCell.swift
//  practica3
//
//  Created by Saul Rivera on 7/13/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelVideo: UILabel!
    @IBOutlet weak var imageVideoPreview: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func update(cell: Cell) {
        labelVideo.text  = cell.labelVideo
        
        let url = URL(string: cell.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                self.imageVideoPreview.image = UIImage(data: data)
            } catch {
                print("Hola")
            }
        }
        }
        
        
        
}
