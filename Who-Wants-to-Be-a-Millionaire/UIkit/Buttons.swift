//
//  File.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by MarkS on 05.02.2023.
//


import UIKit

class ExampleButton: UIButton {
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        tintColor = .black
    }
}


