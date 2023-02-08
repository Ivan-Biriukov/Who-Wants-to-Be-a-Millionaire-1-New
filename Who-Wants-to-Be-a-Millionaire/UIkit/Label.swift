//
//  Label.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by MarkS on 04.02.2023.
//


import UIKit

class ExampleLabel: UILabel {
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLabel()
    }
    
    
    func setupLabel() {
        font = UIFont.boldSystemFont(ofSize: 17.0)
        textColor = .white
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}

