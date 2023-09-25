//
//  FeedCell.swift
//  MyscoreIs_iOS
//
//  Created by 우상현 on 2023/09/25.
//

import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 10
    }
    
    func configure(_ info: FeedInfo) {
        nameLabel.text = info.name
        titleLabel.text = info.title
        categoryLabel.text = info.category
        descriptionLabel.text = info.description
        pointLabel.text = "\(info.point)"
    }
}
