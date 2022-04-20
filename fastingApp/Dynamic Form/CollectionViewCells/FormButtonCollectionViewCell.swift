//
//  FormButtonCollectionViewCell.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//

import UIKit

final class FormButtonCollectionViewCell: UICollectionViewCell {
    private lazy var actionBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        return btn
    }()
    func bind(_ item: FormComponent) {
        guard let item = item as? ButtonFormItem else {return}
        setup (item: item)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        removeView()
    }
}
private extension FormButtonCollectionViewCell {
    func setup(item: ButtonFormItem ){
        actionBtn.setTitle(item.title, for: .normal)
        contentView.addSubview(actionBtn)
        
        NSLayoutConstraint.activate([
            actionBtn.heightAnchor.constraint(equalToConstant: 44),
            actionBtn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            actionBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            actionBtn.topAnchor.constraint(equalTo: contentView.topAnchor),
            actionBtn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
