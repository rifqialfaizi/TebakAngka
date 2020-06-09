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
    
    lazy var angkaRandomProperty: Int = generateRandomNumber()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = angkaRandomProperty
        
        self.angkaYangDiTebak.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    // Hide Keyboard when tap outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func tebakButtonDidTap(_ sender: Any) {
       
        // Angka yang harus di tebak
        let angka = angkaRandomProperty
        print(angka)
        
        // Text Field
        let angkaTebakan = Int(angkaYangDiTebak.text!)
        
        // Angka terlalu kecil
        if angkaTebakan! < (angka-5)  {
            print("Angka terlalu kecil")
             showAlert(title: "Angka kamu terlalu kecil!" , message: "Tetap Semangat!")
        
  
        } else if angkaTebakan! > (angka-5) && angkaTebakan! < angka {
        print("Angka kamu terlalu kecil, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu kecil, tetapi hampir mendekati!" , message: "Tetap Semangat!")
        }
        
        
        // Angka terlalu besar
        if angkaTebakan! > (angka+5) {
        print("Angka kamu terlalu besar")
            showAlert(title: "Angka kamu terlalu besar!" , message: "Tetap Semangat!")
            
        } else if angkaTebakan! > angka && angkaTebakan! < (angka+5) {
        print("Angka kamu terlalu besar, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu besar, tetapi hampir mendekati!" , message: "Tetap Semangat!")
        }
        
        // Angka Benar
        if angkaTebakan! == angka {
            print("Wahh kamu benar!")
                    
          showAlert2(title: "Waw kamu benar!" , message: "Hebat!")
        }
    }
    
    func generateRandomNumber() -> Int {
        let angkaRandom = Int.random(in: 1...10)
        return angkaRandom
    }
}



