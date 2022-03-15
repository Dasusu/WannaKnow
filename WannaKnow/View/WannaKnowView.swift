//
//  WannaKnowView.swift
//  WannaKnow
//
//  Created by Dasu on 2022/2/24.
//

import Foundation
import SnapKit
import DropDown
import UIKit

class WannaKnowView: UIView{
    
    var signUp = SignUp()
    var firstTextField: String? {
        didSet {
            signUp.speaker = firstTextField ?? ""
        }
    }
    
    var firstTitle: InsideTitleAndTextField = {
       let first = InsideTitleAndTextField()
        first.titleLabel.text = "分享人:"
        return first
    }()
    
    var secondTitle: InsideTItleAndDatePicker = {
        let second = InsideTItleAndDatePicker()
        second.titleLabel.text = "日期:"
        return second
    }()
    var thirdTitle: InsideTitleAndDorpDownList = {
       let third = InsideTitleAndDorpDownList()
        third.titleLabel.text = "分類:"
        return third
    }()
    var fourTitle: InsideTitleAndTextField = {
       let four = InsideTitleAndTextField()
        four.titleLabel.text = "主題:"
        return four
    }()
    var fifthTitle: ImageAndTextField = {
        let fifth = ImageAndTextField()
        return fifth
    }()
    var sixTitle: InsideTitleAndSegmentedPicker = {
        let six = InsideTitleAndSegmentedPicker()
        six.titleLabel.text = "分享方式:"
        return six
    }()
    var tagTitle: InsideTitleAndTextField = {
        let tag = InsideTitleAndTextField()
        tag.titleLabel.text = "標籤:"
        return tag
    }()
    
 // MARK: 元件
    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 24)
        titleLabel.text = "報名"
        titleLabel.tintColor = .white
        return titleLabel
    }()
    
    var textView: UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 18)
        textView.textAlignment = .left
        textView.isEditable = true
        textView.isSelectable = true
        textView.text = ""
        textView.backgroundColor = .brown
        return textView
    }()
    
    var tagView: UIView = {
        let tagView = UIView()
        tagView.backgroundColor = .blue
        return tagView
    }()
    
    let sendButton: UIButton = {
        let sendButton = UIButton()
        sendButton.setTitle("送出", for: .normal)
        sendButton.tintColor = .white
        sendButton.backgroundColor = #colorLiteral(red: 0.4011802375, green: 0.6375043988, blue: 0.4550539255, alpha: 1)
        
        return sendButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        addSubview(titleLabel)
        addSubview(firstTitle)
        addSubview(secondTitle)
        addSubview(thirdTitle)
        addSubview(fourTitle)
        addSubview(fifthTitle)
        addSubview(sixTitle)
        addSubview(tagTitle)
        addSubview(tagView)
        addSubview(textView)
        addSubview(sendButton)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.top.equalTo(safeAreaLayoutGuide.snp.top)

        }
        firstTitle.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        secondTitle.snp.makeConstraints { make in
            make.top.equalTo(firstTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        thirdTitle.snp.makeConstraints { make in
            make.top.equalTo(secondTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        fourTitle.snp.makeConstraints { make in
            make.top.equalTo(thirdTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        fifthTitle.snp.makeConstraints { make in
            make.top.equalTo(fourTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        sixTitle.snp.makeConstraints { make in
            make.top.equalTo(fifthTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        tagTitle.snp.makeConstraints { make in
            make.top.equalTo(sixTitle.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        tagView.snp.makeConstraints { make in
            make.top.equalTo(tagTitle.snp.bottom).offset(30)
            make.height.equalTo(30)
            make.width.equalTo(100)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        textView.snp.makeConstraints { make in
            make.top.equalTo(tagView.snp.bottom).offset(30)
            make.height.equalTo(100)
            make.width.equalTo(300)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        sendButton.snp.makeConstraints { make in
            make.top.equalTo(textView.snp.bottom).offset(60)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
    }
    
    
    
    
    
    
}
