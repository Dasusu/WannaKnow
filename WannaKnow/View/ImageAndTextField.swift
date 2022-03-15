//
//  ImageAndTextField.swift
//  WannaKnow
//
//  Created by Dasu on 2022/3/9.
//

import Foundation
import SnapKit

class ImageAndTextField: UIView {
   
    let imageTitle: UIImageView = {
        let imageTitle = UIImageView()
        imageTitle.image = UIImage(named: "Group 14")
        return imageTitle
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.clearButtonMode = .whileEditing
        textField.font = .systemFont(ofSize: 18)
        textField.textColor = .black
        textField.borderStyle = .roundedRect
        textField.text = ""
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        let imageAndTextFieldStackView: UIStackView = {
            let imageAndTextFieldStackView = UIStackView(arrangedSubviews: [imageTitle, textField])
            imageAndTextFieldStackView.axis = .horizontal
            imageAndTextFieldStackView.distribution = .fillEqually
            return imageAndTextFieldStackView
        }()
        addSubview(imageAndTextFieldStackView)
        imageAndTextFieldStackView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
}
