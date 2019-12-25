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
            } else {
                break
            }
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
    
}

