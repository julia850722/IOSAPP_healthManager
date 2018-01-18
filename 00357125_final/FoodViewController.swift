//
//  FoodViewController.swift
//  00357125_final
//
//  Created by user_03 on 2018/1/12.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    var height1 = ""
    var weight1 = ""
    var bmi1 = ""
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
  
    @IBOutlet weak var imagw: UIImageView!
    
    
    var user: Food!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        height.text = user.Height
        weight.text = user.Weight
        imagw.image = user.image
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
