//
//  BannerViewTableViewCell.swift
//  Health App
//
//  Created by Ravindu Samarakoon on 2023-05-09.
//

import UIKit

class BannerViewTableViewCell: UITableViewCell {

    static let identifier = "BannerViewTableViewCell"
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemYellow
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
