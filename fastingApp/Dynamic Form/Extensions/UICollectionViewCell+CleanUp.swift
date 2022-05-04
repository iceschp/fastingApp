//
//  UICollectionViewCell+CleanUp.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//

import UIKit

extension UICollectionViewCell {
    func removeView() {
        contentView.subviews.forEach{ $0.removeFromSuperview() }
    }
}
