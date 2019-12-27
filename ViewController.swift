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
        
        sortOfArray(array: [9, 1, 2, 5, 1, 7])
                
        traslitDict(word: "ЯЗЗЬ")
        
        arrayWithConditionsManual(array: ["lada", "sedan", "baklazhan"])
        
        arrayWithConditionsSort(array: ["lada", "sedan", "baklazhan"])
        
    }
    
    func countCharactersFullName (name: String) -> Int {
        print("Задание 1")
        print("Меня зовут \(name), и в моем имени \(name.count) знаков")
        print("")
        return name.count
    }
    
    func patronymicSuffix (patronymic: String) {
        print("Задание 2")
        if patronymic.hasSuffix("ич") {
            print("Мое отчество \(patronymic) и в нем есть суффикс \"ич\"")
        } else if patronymic.hasSuffix("на") {
            print("Мое отчество \(patronymic) и в нем есть суффикс \"на\"")
        } else {
            print("Мое отчество \(patronymic) и в нем нет суффиксов \"ич\" или \"на\"")
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
        var count = 0
        var result = ""
        if !password.isEmpty {
            for character in password {
                if character.isNumber {
                    count += 1
                    result.append("a)")
                    break
                }
            }
            for character in password {
                if character.isUppercase {
                    count += 1
                    result.append("b)")
                    break
                }
            }
            for character in password {
                if character.isLowercase {
                    count += 1
                    result.append("c)")
                    break
                }
            }
            for character in password {
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
    
    func sortOfArray(array: [Int]) -> [Int] {
        print("Задание 7")
        var sortedArray:[Int] = []
        var count = array.count
        var arrayToModify = array
        print("Исходный массив:\(array)")
        for _ in 0..<count {
            arrayToModify = [0] + arrayToModify
            for i in 1..<count {
                if arrayToModify[i] > arrayToModify[i + 1] {
                    arrayToModify[0] = arrayToModify[i]
                    arrayToModify[i] = arrayToModify[i + 1]
                    arrayToModify[i + 1] = arrayToModify[0]
                } else if arrayToModify[i] == arrayToModify[i + 1] {
                    arrayToModify.remove(at: (i))
                    count = count - 1
                    break
                }
            }
            arrayToModify.remove(at: 0)
        }
        sortedArray = arrayToModify
        print("Упорядоченный по возрастанию массив без дубликатов: \(sortedArray)")
        print("")
        return sortedArray
    }
    
    func traslitDict(word: String) -> String {
        print("Задание 8")
        var translitWord = ""
        let dictionary = ["Я":"YA", "З":"Z", "м":"m", "о":"o", "р":"r", "Д":"D", "а":"a"]
        for char in word {
            for member in dictionary.keys {
                if String(char) == member {
                    translitWord = translitWord + dictionary[member]!
                }
            }
        }
        print("Транслитерацией слова \(word) будет -> \(translitWord)")
        print("")
        return translitWord
    }
    
    func arrayWithConditionsManual(array: [String]) -> [String] {
        print("Задание 9 (перебор через цикл)")
        var sortedArray = [String]()
        for item in array {
            if item.contains("da") {
                sortedArray = sortedArray + [item]
            }
        }
        print("В массиве \(array) ищем элементы с сочетанием \"da\"")
        print("Отсортированный в результате массив -> \(sortedArray)")
        print("")
        return sortedArray
    }
    
    func arrayWithConditionsSort(array: [String]) -> [String] {
        print("Задание 9 (сортировка с предикатом)")
        let sortedArray = array.filter({ $0.contains("da") })
        print("В массиве \(array) ищем элементы с сочетанием \"da\"")
        print("Отсортированный в результате массив -> \(sortedArray)")
        print("")
        return sortedArray
    }

}

