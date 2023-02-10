//
//  InGameViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 10.02.2023.
//

import UIKit

class InGameViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let topGroupStackView: UIStackView = {
        let topGroup = UIStackView()
        topGroup.axis = .vertical
        topGroup.alignment = .fill
        topGroup.distribution = .fillProportionally
        return topGroup
    }()
    
    private let topViewFirstStackView: UIStackView = {
        let topfirst = UIStackView()
        topfirst.axis = .horizontal
        topfirst.alignment = .fill
        topfirst.distribution = .fillProportionally
        
      //  topfirst.translatesAutoresizingMaskIntoConstraints = false
        return topfirst
    }()
    
    private let topViewSecondStackView: UIStackView = {
        let topSecond = UIStackView()
        topSecond.axis = .horizontal
        topSecond.alignment = .fill
        topSecond.distribution = .fillProportionally
        
      //  topfirst.translatesAutoresizingMaskIntoConstraints = false
        return topSecond
    }()
    
    private var questionText: UILabel = {
        var text = UILabel()
        var questionBrain = QuestionsBrain()
        let questionText = questionBrain.getQuestionText()
        text.font = .robotoMedium24()
        text.textAlignment = .left
        text.textColor = .white
        text.text = questionText
        text.numberOfLines = 0
        text.adjustsFontSizeToFitWidth = true
        //text.frame = CGRect(x: -126 , y: 28, width: 281, height: 100)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private let icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "Image 1")
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private let questionNumberLabel: UILabel = {
        var number = UILabel()
        number.font = .robotoMedium18()
        number.textAlignment = .left
        number.textColor = .white
        number.text = "QuestionNumber"
        
        return number
    }()
    
    
    // MARK: - Life cycle methods
     override func viewDidLoad() {
         super.viewDidLoad()
         setupViews()
         setConstraints()
     }
     
     override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         backgroundImageView.frame = view.bounds
     }
     
 // MARK: - Global setup for Views
     private func setupViews(){
         view.addSubview(backgroundImageView)
         view.addSubview(topGroupStackView)

     }
 }

 // MARK: - Settings on Constrains
 extension InGameViewController {
     
     private func setConstraints(){
         NSLayoutConstraint.activate([
             
             backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
             backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             backgroundImageView.trailingAnchor.constraint(equalTo: view.leadingAnchor),
             backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             
//             topView.topAnchor.constraint(equalTo: view.topAnchor),
//             topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//             topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//             topView.heightAnchor.constraint(equalToConstant: 200),

             questionText.heightAnchor.constraint(equalToConstant: 100),
             questionText.widthAnchor.constraint(lessThanOrEqualToConstant: 281),

             
             icon.widthAnchor.constraint(equalToConstant: 87),
             icon.heightAnchor.constraint(equalToConstant: 87),
             

         ])
     }
}
