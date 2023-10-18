//
//  IGFeedPostTableViewCell.swift
//  InstagramMe
//
//  Created by MacBook Air on 17/10/2023.
//

import UIKit

final class IGFeedPostTableViewCell: UITableViewCell {

   static let identifier = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
