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
    @IBOutlet weak var scoreTextLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 10
    
    lazy var angkaRandomProperty: Int = generateRandomNumber()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set agar membuat nomor random saat masuk view saja, dan tidak me random angka di setiap tap button
        _ = angkaRandomProperty
        
        // Hide keyboard when tapped outside keyboard
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
            
            score -= 1
            scoreLabel.text = String(score)
        
  
        } else if angkaTebakan! > (angka-5) && angkaTebakan! < angka {
        print("Angka kamu terlalu kecil, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu kecil, tetapi hampir mendekati!" , message: "Tetap Semangat!")
            score -= 1
            scoreLabel.text = String(score)
        }
        
        
        // Angka terlalu besar
        if angkaTebakan! > (angka+5) {
        print("Angka kamu terlalu besar")
            showAlert(title: "Angka kamu terlalu besar!" , message: "Tetap Semangat!")
            score -= 1
            scoreLabel.text = String(score)
            
        } else if angkaTebakan! > angka && angkaTebakan! < (angka+5) {
        print("Angka kamu terlalu besar, tetapi hampir mendekati")
            showAlert(title: "Angka kamu terlalu besar, tetapi hampir mendekati!" , message: "Tetap Semangat!")
            score -= 1
            scoreLabel.text = String(score)
        }
        
        // Angka Benar
        if angkaTebakan! == angka {
            print("Wahh kamu benar!")
           
            showAlert2(title: "Waw kamu benar! \n Score kamu adalah \n \(score)" , message: "Hebat!")
            
            scoreLabel.text = String(score)
            
            // TODO: - ReGenerate Random Number
            // try to use generateRandomNumber() -> failed
            // try to use method in viewDidLoad() -> failed
            // try to reWrite func -> failed
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let playViewController = mainStoryboard.instantiateViewController(identifier: "HomeViewController")
            self.navigationController?.pushViewController(playViewController, animated: false)
            
            }
        }
    
    func generateRandomNumber() -> Int {
        let angkaRandom = Int.random(in: 1...10)
        return angkaRandom
    }
}



