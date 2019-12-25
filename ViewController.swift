//
//  ViewController.swift
//  G76L4
//
//  Created by Oleksandr Seliverstov on 25.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countCharactersFullName(name: "Александр Селиверстов")
        
        patronymicSuffix(patronymic: "Евгеньевич")
        
        separateName(name: "АлександрСеливерстов")
        
        mirrorOutput(word: "Ось")
        
        decimalSigns(number: 1234567)
        
        checkPassword(password: "123456qwERty#")
        
    }
    
    func countCharactersFullName (name: String) -> Int {
        print("Задание 1")
        let myName = name
        var charactersNumber = 0
        charactersNumber = myName.count
        print("Меня зовут \(myName), и в моем имени \(charactersNumber) знаков")
        print("")
        return charactersNumber
    }
    
    func patronymicSuffix (patronymic: String) -> Void {
        print("Задание 2")
        let myPatronymic = patronymic
        if myPatronymic.hasSuffix("ич") {
            print("Мое отчество \(myPatronymic) и в нем есть суффикс \"ич\"")
        } else if myPatronymic.hasSuffix("на") {
            print("Мое отчество \(myPatronymic) и в нем есть суффикс \"на\"")
        } else {
            print("Мое отчество \(myPatronymic) и в нем нет суффиксов \"ич\" или \"на\"")
        }
        print("")
    }
    
    func separateName(name: String) -> String {
        print("Задание 3")
        var connectedName = name
        var separateName = ""
        var firstName = String(connectedName.first ?? " ")
        var surName = ""
        connectedName = String(connectedName.dropFirst())
        for character in connectedName {
            if character.isLowercase {
                firstName = firstName + String(character)
            } else {break}
        }
        if firstName != " " {
            print("str1 = \"\(firstName)\"")
            print("")
            surName = String(connectedName.dropFirst((firstName.count - 1)))
            print("str2 = \"\(surName)\"")
            print("")
            separateName = firstName + " " + surName
            print("str3 = \"\(separateName)\"")
            print("")
        } else {
            separateName = "Исходное Имя не задано"
            print(separateName)
        }
        return separateName
    }
    
    func mirrorOutput (word: String) -> String {
        print("Задание 4")
        var mirrorWord = ""
        var initialWord = word
        while !initialWord.isEmpty {
            mirrorWord.append(initialWord.last!)
            initialWord.removeLast()
        }
        print("\(word) -> \(mirrorWord)")
        print("")
        return mirrorWord
    }
    
    func decimalSigns(number: Int) -> String {
        print("Задание 5")
        var initialNumber = String(number)
        var finalNumber = ""
        let count = initialNumber.count
        for i in 1...count {
            if (count - i) > 0 {
                if i % 3 == 0 {
                    initialNumber.insert(",", at: initialNumber.index(initialNumber.startIndex, offsetBy: (count - i)))
                }
            } else {break}
        }
        finalNumber = initialNumber
        print("\(number) -> \(finalNumber)")
        print("")
        return finalNumber
    }
    
    func checkPassword(password: String) -> String {
        print("Задание 6")
        let passwordToCheck = password
        var count = 0
        var result = ""
        if !passwordToCheck.isEmpty {
            for character in passwordToCheck {
                if character.isNumber {
                    count += 1
                    result.append("a)")
                    break
                }
            }
            for character in passwordToCheck {
                if character.isUppercase {
                    count += 1
                    result.append("b)")
                    break
                }
            }
            for character in passwordToCheck {
                if character.isLowercase {
                    count += 1
                    result.append("c)")
                    break
                }
            }
            for character in passwordToCheck {
                if !character.isNumber && !character.isLowercase && !character.isUppercase {
                    count += 1
                    result.append("d)")
                    break
                }
            }
        } else {
            print("Пароль не введен")
        }
        if count == 4 {
            count = 5
            result = "e)"
        }
        result = String(count) + " " + result
        print("\(password) - \(result)")
        print("")
        return result
    }
    
}

