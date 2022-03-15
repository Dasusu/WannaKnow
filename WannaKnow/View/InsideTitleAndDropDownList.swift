//
//  InsideTitleAndDropDownList.swift
//  WannaKnow
//
//  Created by Dasu on 2022/3/9.
//

import Foundation
import SnapKit
import DropDown
import UIKit

class InsideTitleAndDorpDownList: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
         titleLabel.font = .systemFont(ofSize: 18)
         titleLabel.tintColor = .white
         titleLabel.text = ""
         return titleLabel
    }()
    var dropDownList: DropDown = {
        let dropDownList = DropDown()
        dropDownList.dataSource = ["請選擇分類", "專案經驗", "學習小心得", "技術剖析", "職場工作", "生活頻道"]
        dropDownList.direction = .bottom
        dropDownList.dismissMode = .onTap
        dropDownList.textColor = .black
        dropDownList.textFont = .systemFont(ofSize: 18)
        dropDownList.backgroundColor = .white
        dropDownList.selectedTextColor = .white
        dropDownList.selectionBackgroundColor = #colorLiteral(red: 0.4011802375, green: 0.6375043988, blue: 0.4550539255, alpha: 1)
        dropDownList.cellHeight = 30
        dropDownList.cornerRadius = 10
        dropDownList.width = 200
        return dropDownList
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        let titleAndDropDownListStackView: UIStackView = {
            let titleAndDropDownListStackView = UIStackView(arrangedSubviews: [titleLabel,dropDownList])
            titleAndDropDownListStackView.axis = .horizontal
            titleAndDropDownListStackView.distribution = .fillEqually
            return titleAndDropDownListStackView
        }()
        addSubview(titleAndDropDownListStackView)
        titleAndDropDownListStackView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
    
    
    
}
