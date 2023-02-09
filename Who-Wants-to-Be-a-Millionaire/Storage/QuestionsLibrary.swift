//
//  QuestionsLibrary.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by иван Бирюков on 09.02.2023.
//

import Foundation

struct QuestionsLibrary {
    
    // MARK: - Propery list
    var easyQuestions = [
        QuestionModel(q: "Which two words traditionally appear onscreen at the termination of a feature film?", a: ["The End", "The Conclusion", "The Finish", "The Pizza Rolls Are Done"], correctAnswer: "The End"),
        QuestionModel(q: "A magnet would most likely attract which of the following?", a: ["Plastic", "Wood", "Metal", "The wrong man"], correctAnswer: "Metal"),
        QuestionModel(q: "Which of these names is not in the title of a Shakespeare play?", a: ["Romeo", "Darren", "Hamlet", "Macbeth"], correctAnswer: "Daren"),
        QuestionModel(q: "Where did Scotch whisky originate?", a: ["The United States", "Ireland", "Scotland", "Wales"], correctAnswer: "Scotland"),
        QuestionModel(q: "In fancy hotels, it is traditional for what tantalizing treat to be left on your pillow?", a: ["A pretzel", "A mint", "An apple", "A photo of Wolf Blitzer"], correctAnswer: "A mint")
        ]
    
    var mediumQuestions = [
        QuestionModel(q: "Как называется разновидность воды, в которой атом водорода замещён его изотопом дейтерием?", a: ["Легкая", "Тяжелая", "Средняя", "Невисомая"], correctAnswer: "Средняя"),
        QuestionModel(q: "Что такое десница?", a: ["Бровь", "Глаз", "Рука", "Шея"], correctAnswer: "Рука"),
        QuestionModel(q: "В какое море впадает река Урал?", a: ["Каспийское", "Средиземное", "Чёрное", "Азовское"], correctAnswer: "Каспийское"),
        QuestionModel(q: "На что кладут руку члены английского общества лысых во время присяги?", a: ["Баскетбольный мяч", "Бильярдный шар", "Апельсин", "Кокосовый орех"], correctAnswer: "Бильярдный шар"),
        QuestionModel(q: "Как назывался каменный монолит, на котором установлен памятник Петру I в Санкт-Петербурге?", a: ["Дом-камень", "Гром-камень", " Гора-камень", "Разрыв-камень"], correctAnswer: "Гром-камень")
    ]
    
    var hardQuestions = [
        QuestionModel(q: "Как Пётр Ильич Чайковский назвал свою серенаду для скрипки с оркестром си-бемоль минор?", a: ["Меланхолическая", "Флегматическая", "олерическая", "Сангвиническая"], correctAnswer: "Меланхолическая"),
        QuestionModel(q: "Какого ордена не было у первого советского космонавта Юрия Гагарина?", a: ["«Ожерелье Нила» (Египет)", "Крест Грюнвальда» (Польша)", "«Плайя Хирон» (Куба)", "«Орден двойного дракона» (Китай)"], correctAnswer: "«Орден двойного дракона» (Китай)"),
        QuestionModel(q: "Какое животное имеет второе название — кугуар?", a: ["Оцелот", "Леопард", "Пума", "Пантера"], correctAnswer: "Пума"),
        QuestionModel(q: "Что в России 19 века делали в дортуаре?", a: ["Спали", "Ели", "Ездили верхом", "Купались"], correctAnswer: "Спали"),
        QuestionModel(q: "Какой химический элемент назван в честь злого подземного гнома?", a: ["Теллур", "Бериллий", "Гафний", "Кобальт"], correctAnswer: "Кобальт")
    ]
    
  
    var allQuestions: [[QuestionModel]] = []
    
    // MARK: - Init
    init() {
        makeAllQuestionsArray()
    }

    // MARK: - Private methods
    mutating private func makeAllQuestionsArray() {
        allQuestions.append(easyQuestions)
        allQuestions.append(mediumQuestions)
        allQuestions.append(hardQuestions)
    }
    
}
