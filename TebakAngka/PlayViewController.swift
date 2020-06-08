//
//  PlayViewController.swift
//  TebakAngka
//
//  Created by Rifqi Alfaizi on 08/06/20.
//  Copyright © 2020 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var angkaYangDiTebak: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.angkaYangDiTebak.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    // Hide Keyboard when tap outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func tebakButtonDidTap(_ sender: Any) {
       
        var angka = 8
        
        // Angka terlalu kecil
        if Int(angkaYangDiTebak.text!)! < 5  {
            print("Angka terlalu kecil")
             showAlert(title: "Angka kamu terlalu kecil!" , message: "Tetap Semangat!")
        
  
        } else if Int(angkaYangDiTebak.text!)! > 4 && Int(angkaYangDiTebak.text!)! < 8 {
        print("Angka kamu terlalu kecil, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu kecil, tetapi hampir mendekati!" , message: "Tetap Semangat!")
        }
        
        
        // Angka terlalu besar
        if Int(angkaYangDiTebak.text!)! > 10 {
        print("Angka kamu terlalu besar")
            showAlert(title: "Angka kamu terlalu besar!" , message: "Tetap Semangat!")
            
        } else if Int(angkaYangDiTebak.text!)! > 8 && Int(angkaYangDiTebak.text!)! < 11 {
        print("Angka kamu terlalu besar, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu besar, tetapi hampir mendekati!" , message: "Tetap Semangat!")
        }
        
        // Angka Benar
        if Int(angkaYangDiTebak.text!)! == angka {
            print("Wahh kamu benar!")
                    
          showAlert2(title: "Waw kamu benar!" , message: "Hebat!")
        }
        
        
}
    
    

}



