//
//  HomeViewController.swift
//  TebakAngka
//
//  Created by Rifqi Alfaizi on 08/06/20.
//  Copyright © 2020 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func playButtonDidTap(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let playViewController = mainStoryboard.instantiateViewController(identifier: "PlayViewController")
        self.navigationController?.pushViewController(playViewController, animated: true)
      
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
