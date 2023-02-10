//
//  InGameViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 10.02.2023.
//

import UIKit

final class InGameViewController: UIViewController {
    
    // MARK: - Property list
    private var backgroundImageView = UIImageView()
    private var millionairImageView = UIImageView()
    private var questionLabel = UILabel()
    private var numberOfQuestionLabel = UILabel()
    private var pricePoolLabel = UILabel()
    private var stackForAnswerButtons = UIStackView()
    
    private var questionBrain = QuestionsBrain()
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Configure UI
    private func configureUI() {
        addSubViews()
        setupConstraints()
        configureBackgroundImage()
        configureMillionaireImageVIew()
        configureQuestionLabel()
        configureNumberOfQuestionLabel()
        configurePricePoolLabel()
        configureStackForAnswerButtons()
        setupAnswersForButtons()
    }
    
    private func addSubViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(millionairImageView)
        view.addSubview(questionLabel)
        view.addSubview(numberOfQuestionLabel)
        view.addSubview(pricePoolLabel)
        view.addSubview(stackForAnswerButtons)
    }
    
    // MARK: - BACKGROUND IMAGE
    private func configureBackgroundImage() {
        backgroundImageView.image = UIImage(named: "Frame 1")
        backgroundImageView.contentMode = .scaleAspectFill
    }
    
    // MARK: - MILLIONAIRE IMAGE VIEW
    private func configureMillionaireImageVIew() {
        millionairImageView.image = UIImage(named: "Image 1")
        millionairImageView.contentMode = .scaleAspectFill
    }
    
    // MARK: - QUESTION LABEL
    private func configureQuestionLabel() {
        questionLabel.text = "What year was the year, when first deodorant was invented in our life?"
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .left
        questionLabel.textColor = .white
        questionLabel.font = UIFont.robotoMedium18()
    }
    
    // MARK: - NUMBER OF QUESTION LABEL
    private func configureNumberOfQuestionLabel() {
        numberOfQuestionLabel.text = "Question 1"
        numberOfQuestionLabel.textAlignment = .left
        numberOfQuestionLabel.textColor = .white
        numberOfQuestionLabel.font = UIFont.robotoMedium24()
    }
    
    // MARK: - PRICE POOL LABEL
    private func configurePricePoolLabel() {
        pricePoolLabel.text = "500 RUB"
        pricePoolLabel.textAlignment = .right
        pricePoolLabel.textColor = .white
        pricePoolLabel.font = UIFont.robotoMedium24()
    }
    
    // MARK: - CONFIGURE STACK FOR ANSWERS
    private func configureStackForAnswerButtons() {
        stackForAnswerButtons.axis = .vertical
        stackForAnswerButtons.spacing = 30
        stackForAnswerButtons.distribution = .fillEqually
    }
    
    // MARK: - ANSWER BUTTONS VIEW
    private func setupAnswersForButtons() {
        // просто пример пути
        let firstAnswers = questionBrain.questionLibrary.easyQuestions[0].answers
        let rightAnswer = questionBrain.questionLibrary.easyQuestions[0].rightAnswer
        
        for i in 0..<firstAnswers.count {
            let answerView = AnswerView()
            answerView.setup(index: i, answerText: firstAnswers[i])
            answerView.onViewTapped = { [weak self] answer in
                guard let self = self else { return }
                
                if answer == rightAnswer {
                    print("CORRECT")
                    answerView.makeViewCorrectState()
                } else {
                    print("FALSE")
                    answerView.makeViewFalseState()
                }
            }
            stackForAnswerButtons.addArrangedSubview(answerView)
        }
        
        
    }
}

// MARK: - Constraints
extension InGameViewController {
    
    private func setupConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        millionairImageView.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfQuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        pricePoolLabel.translatesAutoresizingMaskIntoConstraints = false
        stackForAnswerButtons.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            millionairImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 19),
            millionairImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            millionairImageView.heightAnchor.constraint(equalToConstant: 87),
            millionairImageView.widthAnchor.constraint(equalToConstant: 87),
            
            questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 28),
            questionLabel.leadingAnchor.constraint(equalTo: millionairImageView.trailingAnchor, constant: 21),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7),//
            
            numberOfQuestionLabel.topAnchor.constraint(equalTo: millionairImageView.bottomAnchor, constant: 14),
            numberOfQuestionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            numberOfQuestionLabel.heightAnchor.constraint(equalToConstant: 30),
            
            pricePoolLabel.centerYAnchor.constraint(equalTo: numberOfQuestionLabel.centerYAnchor),
            pricePoolLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27),
            
            stackForAnswerButtons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackForAnswerButtons.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackForAnswerButtons.topAnchor.constraint(equalTo: numberOfQuestionLabel.bottomAnchor, constant: 30),
            ])
    }
}

