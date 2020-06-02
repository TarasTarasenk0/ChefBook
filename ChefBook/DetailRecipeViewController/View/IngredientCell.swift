//
//  TableViewCell.swift
//  ChefBook
//
//  Created by md760 on 02.06.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

final class IngredientCell: UITableViewCell {
    @IBOutlet weak var ingredient: UILabel!
    @IBOutlet weak var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
}
