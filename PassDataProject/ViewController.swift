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
        //метод, который открывает экран по идентификатору
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func unwindSegueToMainStoryboard(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
    }
    

    
    //Метод скрывающий клавиатуру, при нажатии в любую точку экрана кроме поля ввода.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
}

    
