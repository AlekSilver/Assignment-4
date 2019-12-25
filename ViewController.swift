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
        
    }
    
    func countCharactersFullName (name: String) -> Int {
        print("Задание 1")
        var charactersNumber = 0
        charactersNumber = name.count
        print("Меня зовут \(name), и в моем имени \(charactersNumber) знаков")
        print("")
        return charactersNumber
    }
    
}

