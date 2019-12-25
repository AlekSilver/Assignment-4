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
    
}

