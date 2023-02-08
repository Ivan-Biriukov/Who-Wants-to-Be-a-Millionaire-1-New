//
//  View.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by MarkS on 04.02.2023.
//

import UIKit
import SnapKit

class StartToPlay: UIView {
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame 1")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let stackForTop = HorizontalStack()
    
    let iconImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "iconImage")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let label = ExampleLabel()
    let label2 = ExampleLabel()
    let label3 = ExampleLabel()
    
    let vertical = VerticalStack()
    let button1 = ExampleButton()
    let button2 = ExampleButton()
    let button3 = ExampleButton()
    let button4 = ExampleButton()
    
    let stackForButton = HorizontalStack()
    
    let fiftyPercentButton: UIButton = {
        let button = UIButton()
        if let image = UIImage(named: "50:50") {
            button.setImage(image, for: .normal)
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let helpButton: UIButton = {
        let button = UIButton()
        if let image = UIImage(named: "help") {
            button.setImage(image, for: .normal)
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let callFriendButton: UIButton = {
        let button = UIButton()
        if let image = UIImage(named: "callFriend") {
            button.setImage(image, for: .normal)
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension StartToPlay {
    
    func style() {
        
        label.text = "123482347asdjhaskjdhaksjhdkjashkdjashjdhasjkdhsajkdh823748327"
        label2.text = "1234823"
        label3.text = "1234823"
        
        
        
        
        button3.setTitle("1  2", for: .normal)
        button2.setTitle("1  2", for: .normal)
        button4.setTitle("1  2", for: .normal)
        
        addSubview(backgroundImage)
        addSubview(iconImage)
        addSubview(label)
        addSubview(label2)
        addSubview(label3)
        
        addSubview(stackForButton)
        let arrayButtons = [fiftyPercentButton,helpButton,callFriendButton]
        arrayButtons.forEach { stackForButton.addArrangedSubview($0) }
        
        addSubview(vertical)
        let arrayButtons2 = [button1,button2,button3,button4]
        arrayButtons2.forEach { vertical.addArrangedSubview($0) }
    }
    
    func layout() {
        
        backgroundImage.snp.makeConstraints{
            $0.top.bottom.left.right.equalToSuperview()
        }
        
        iconImage.snp.makeConstraints{
            $0.top.equalTo(safeAreaLayoutGuide).inset(18)
            $0.height.width.equalToSuperview().multipliedBy(0.12)
            $0.left.equalToSuperview().inset(40)
        }
        
        label.snp.makeConstraints{
            $0.top.equalTo(safeAreaLayoutGuide).inset(18)
            $0.height.equalTo(iconImage)
            $0.right.equalToSuperview().inset(20)
            $0.left.equalTo(iconImage.snp.right).offset(35)
        }
        
        label2.snp.makeConstraints{
            $0.top.equalTo(iconImage.snp.bottom).offset(10)
            $0.left.equalToSuperview().inset(20)
        }
        
        label3.snp.makeConstraints{
            $0.top.equalTo(label.snp.bottom).offset(10)
            $0.right.equalToSuperview().inset(20)
        }
        
        vertical.snp.makeConstraints{
            $0.top.equalTo(label2.snp.bottom).offset(50)
            $0.height.equalToSuperview().multipliedBy(0.38)
            $0.left.right.equalToSuperview().inset(40)
        }
        stackForButton.snp.makeConstraints{
            $0.width.equalToSuperview().multipliedBy(0.9)
            $0.height.equalToSuperview().multipliedBy(0.1)
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(60)
        }
    }
}
