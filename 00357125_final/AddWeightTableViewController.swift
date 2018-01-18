//
//  AddLoverTableViewController.swift
//  AddData
//
//  Created by SHIH-YING PAN on 22/12/2017.
//  Copyright © 2017 SHIH-YING PAN. All rights reserved.
//

import UIKit

class AddWeightTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
     var isChangeImage = false
    @IBOutlet weak var heightText: UITextField!
    
    @IBOutlet weak var image: UIButton!
    
    @IBOutlet weak var weightText: UITextField!
    
    var info: Info!
    @IBOutlet weak var dateText: UITextField!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        image.setBackgroundImage(info[UIImagePickerControllerOriginalImage] as? UIImage, for: .normal)
        
        isChangeImage = true
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func changePhoto(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     var datePicker : UIDatePicker!
    @IBAction func DateTextFieldEditE(_ sender: Any) {
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.datePickerMode = UIDatePickerMode.date
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        dateText.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelClick))
        
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        dateText.inputAccessoryView = toolBar
    }
    @IBAction func DateTextFieldEditB(_ sender: Any) {
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.datePickerMode = UIDatePickerMode.date
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        dateText.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelClick))
        
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        dateText.inputAccessoryView = toolBar
    }
    
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        dateFormatter1.dateFormat = "yyyy/MM/dd"
        dateText.text = dateFormatter1.string(for: datePicker.date)
        dateText.resignFirstResponder()
    }
    @objc func cancelClick() {
        dateText.resignFirstResponder()
    }
    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        
        dateFormatter.timeStyle = .none
        dateFormatter.dateFormat = "MMMM dd yyyy"
        dateText.text = dateFormatter.string(from: sender.date)
        
    }
    
    
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        return true
        
    }
    // MARK: - Table view data source
    
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    func showAlert(message: String) {
        let controller = UIAlertController(title: "錯誤", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        controller.addAction(action)
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        guard let height = heightText.text, height.count > 0 else {
            
            showAlert(message: "請輸入身高")
            return false
        }
        
        guard let weight = weightText.text, weight.count > 0 else {
            
            showAlert(message: "請輸入體重")
            
            return false
        }
        guard let date = dateText.text, date.count > 0 else {
            
            showAlert(message: "請輸入日期")
            
            return false
        }
        let height_int = Double(heightText.text!)!/100
    
        let weight_int = Double(weightText.text!)
       
        let bmi = String((weight_int!/height_int)/height_int)
       
        var imageName: String?
        if isChangeImage {
            imageName = "\(Date().timeIntervalSinceReferenceDate)"
            let url = Info.documentsDirectory.appendingPathComponent(imageName!)
            let data = UIImageJPEGRepresentation(image.backgroundImage(for: .normal)!, 0.9)
            
            try? data?.write(to: url)
        }

        
        info = Info(Height: height + "cm", Weight: weight + "kg", Date: date,BMI: bmi,imageName: imageName)
        
        
        return true
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
    }
    
    
}

