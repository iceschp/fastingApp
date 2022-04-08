//
//  FormTextCollectionViewCell.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//

import UIKit

class FormTextCollectionViewCell: UICollectionViewCell {
    private lazy var txtField: UITextField = {
        let txtField = UITextField()
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.layer.cornerRadius = 8
        txtField.layer.borderWidth = 1
        txtField.layer.borderColor = UIColor.systemGray.cgColor
        return txtField
    }()
    func bind(_ item: FormComponent){
        guard let item = item as? TextFormComponent else {return}
        setup(item: item)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        removeView()
    }
}

private extension FormTextCollectionViewCell {
    func setup(item: TextFormComponent) {
        txtField.placeholder = "\(item.placeholder)"
        txtField.keyboardType = item.keyboardType
        // Layout
        contentView.addSubview(txtField)
        NSLayoutConstraint.activate([
            txtField.heightAnchor.constraint(equalToConstant: 44),
            txtField.topAnchor.constraint(equalTo: contentView.topAnchor),
            txtField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            txtField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
}
