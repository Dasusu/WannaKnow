//
//  InsideTitleAndTextField.swift
//  WannaKnow
//
//  Created by Dasu on 2022/3/2.
//

import Foundation
import SnapKit
import DropDown
import UIKit

class InsideTitleAndTextField: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 18)
        titleLabel.tintColor = .white
        titleLabel.text = ""
        return titleLabel
    }()
    
    var textField: UITextField = {
        var textField = UITextField()
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
        let labelAndTextFieldStackView: UIStackView = {
           let labelAndTextFieldStackView = UIStackView(arrangedSubviews: [titleLabel, textField])
            labelAndTextFieldStackView.axis = .horizontal
            labelAndTextFieldStackView.distribution = .fillEqually
            return labelAndTextFieldStackView
        }()
        addSubview(labelAndTextFieldStackView)
        labelAndTextFieldStackView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
    
    
}
