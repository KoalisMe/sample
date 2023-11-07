//
//  CardCollectionViewCell.swift
//  codingTask
//
//  Created by Oleg Kasarin on 07/11/2023.
//

import UIKit

final class CardCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var imageView: BrandedImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        prepare()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare()
    }
    
    // MARK: - Public
    
    func setup(imageURL: String) {
        imageView.load(imageURL: imageURL, placeholder: nil)
    }
}

// MARK: - Private

private extension CardCollectionViewCell {
    func setup() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = frame.height / 2
//        dropShadow(offSet: CGSize(width: 0, height: 5))
    }
    
    func prepare() {
        imageView.image = nil
    }
}
