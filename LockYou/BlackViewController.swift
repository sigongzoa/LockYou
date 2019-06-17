//
//  BlackViewController.swift
//  IdleTimer
//
//  Created by sgcs on 12/06/2019.
//  Copyright © 2019 Sanghoon Han. All rights reserved.
//

import UIKit

class BlackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        self.dismiss(animated: false, completion: nil)
        timerData.black = 0
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
