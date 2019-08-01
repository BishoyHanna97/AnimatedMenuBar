//
//  TableViewCell.swift
//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellIcon: UIImageView!
    @IBOutlet weak var collectionview: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
