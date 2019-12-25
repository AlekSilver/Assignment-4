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
        var charactersNumber = 0
        charactersNumber = name.count
        print("Меня зовут \(name), и в моем имени \(charactersNumber) знаков")
        print("")
        return charactersNumber
    }
    
    func patronymicSuffix (patronymic: String) -> Void {
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
    
}

