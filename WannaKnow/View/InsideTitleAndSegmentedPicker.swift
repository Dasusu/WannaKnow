//
//  InsideTitleAndSegmentedPicker.swift
//  WannaKnow
//
//  Created by Dasu on 2022/3/9.
//

import Foundation
import SnapKit

class InsideTitleAndSegmentedPicker: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 18)
        titleLabel.tintColor = .white
        titleLabel.text = ""
        return titleLabel
    }()
    
    let segmentedPicker: UISegmentedControl = {
        let segmentedPicker = UISegmentedControl(items: ["現場","遠端"])
        
        return segmentedPicker
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        let labelAndSegmentedPickerStackView: UIStackView = {
            let labelAndSegmentedPickerStackView = UIStackView(arrangedSubviews: [titleLabel, segmentedPicker])
            labelAndSegmentedPickerStackView.axis = .horizontal
            labelAndSegmentedPickerStackView.distribution = .fillEqually
            return labelAndSegmentedPickerStackView
        }()
        addSubview(labelAndSegmentedPickerStackView)
        labelAndSegmentedPickerStackView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
    
    
    
}
