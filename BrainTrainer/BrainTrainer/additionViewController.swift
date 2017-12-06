//
//  additionViewController.swift
//  BrainTrainer
//
//  Created by User on 12/4/17.
//  Copyright © 2017 Donelys.familia. All rights reserved.
//

import UIKit

class additionViewController: UIViewController {

    var locationCorrectAnwer = 0
    var answer: Array<Int> = Array()
    @IBOutlet weak var countDown: UILabel!
    
    
    
    
    @IBOutlet weak var operationLabel: UILabel!
    
    
    
 
    var time = 100
    
    var timer = Timer()
    
    
    
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(additionViewController.action), userInfo: nil, repeats: true)
        creatingQuestion()
    }
    
    
    func action(){
        time = time-1
        countDown.text = String(time)
        if countDown.text == "0" {
            timer.invalidate()
        }
    }
    
    
    
    func creatingQuestion(){
        let numbera = arc4random_uniform(100)
        let numberb = arc4random_uniform(100)
        
        operationLabel.text = String(numbera) + " + " + String(numberb)
        
        locationCorrectAnwer  = Int(arc4random_uniform(4))
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
