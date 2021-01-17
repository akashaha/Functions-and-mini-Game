//
//  CustomCollectionViewCell.swift
//  CollectionView Programatically
//
//  Created by Arman Akash on 1/17/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifire = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
     override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myImageView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.height, height: contentView.frame.size.height)
    }
    
    
}
