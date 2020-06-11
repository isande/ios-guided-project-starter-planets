//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Peggy Wollenhaupt on 6/11/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // this is the planet that the cell should display in its views
    var planet: Planet? {
        didSet {
            // anytime the planet's value changes, run this code
            updateViews()
        }
    }
    
    func updateViews() {
        imageView.image = planet?.image
        nameLabel.text = planet?.name
    }
}
