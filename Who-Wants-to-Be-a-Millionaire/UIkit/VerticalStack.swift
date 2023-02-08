//
//  Stack.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by MarkS on 05.02.2023.
//

import UIKit

class VerticalStack: UIStackView {
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStack()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupStack()
    }
    
    
    func setupStack() {
        axis = .vertical
        distribution = .fillEqually
        spacing = 30
    }
}
