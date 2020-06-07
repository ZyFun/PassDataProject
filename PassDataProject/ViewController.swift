//
//  ViewController.swift
//  PassDataProject
//
//  Created by Дмитрий Данилин on 07.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func loginTapped(_ sender: UIButton) {
    }
    
    //Метод скрывающий клавиатуру, при нажатии в любую точку экрана кроме поля ввода.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

    
