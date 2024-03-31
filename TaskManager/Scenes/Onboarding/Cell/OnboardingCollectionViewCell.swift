//
//  OnboardingCollectionViewCell.swift
//  TaskManager
//
//  Created by Ibrahim Nasser Ibrahim on 31/03/2024.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var containerView: UIStackView!
    @IBOutlet weak var onboardingImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    func setup(_ onboarding: Onboarding) {
        onboardingImage.image = UIImage(named: onboarding.image)
        titleLabel.text = onboarding.title
        subtitleLabel.text = onboarding.subtitle
    }
    
    func configureUI() {
        clipsToBounds = false
        containerView.isLayoutMarginsRelativeArrangement = true
        containerView.layoutMargins = .init(top: 0, left: 10, bottom: 20, right: 10)
        titleLabel.font = .custom(size: 35, weight: .bold)
        subtitleLabel.font = .h2
        titleLabel.textColor = .tonboarding
    }
}
