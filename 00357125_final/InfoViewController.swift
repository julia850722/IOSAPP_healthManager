//
//  InfoViewController.swift
//  00357125_final
//
//  Created by user_03 on 2018/1/11.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController{
    var height1 = ""
    var weight1 = ""
    var bmi1 = ""
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var overthin: UIImageView!
    @IBOutlet weak var thin: UILabel!
    @IBOutlet weak var normal: UIImageView!
    
    @IBOutlet weak var fat: UILabel!
    @IBOutlet weak var overweight: UIImageView!
    @IBOutlet weak var normaltext: UILabel!
    
    var user: Info!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        height.text = user.Height
        weight.text = user.Weight
        bmi.text = user.BMI
        if(user.BMI>"24"){
            bmi.textColor = UIColor.red
            fat.isHidden = false
            overweight.isHidden = false
        }else if(user.BMI<"18.5"){
             bmi.textColor = UIColor.red
            thin.isHidden = false
            overthin.isHidden = false
        }else{
            normal.isHidden = false
            normaltext.isHidden = false
        }
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
