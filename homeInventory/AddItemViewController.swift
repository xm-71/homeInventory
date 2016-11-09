//
//  AddItemViewController.swift
//  HomeInventory
//
//  Created by Rob Elliott on 10/18/16.
//  Copyright © 2016 Rob Elliott. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var selectedRoom: Room!
    
    var selectedCategory: Category!
    
    var purchaseDate: NSDate!
    
    
    @IBOutlet weak var txtItemName: UITextField!
    
    @IBOutlet weak var txtSerialNumber: UITextField!
    
    @IBOutlet weak var txtPurchasePrice: UITextField!
    
   
    @IBOutlet weak var txtPurchaseDate: UITextField!
    
    @IBAction func txtFieldEditing(sender: UITextField) {
        
        
        let datePickerView: UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.Date
        
        if purchaseDate == purchaseDate {
        
        datePickerView.date = purchaseDate
        
        }
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), forControlEvents: UIControlEvents.ValueChanged)
        
        
        
    }
    
    func datePickerValueChanged(sender: UIDatePicker){
    
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        txtPurchaseDate.text = dateFormatter.stringFromDate(sender.date)
        
        
        purchaseDate = sender.date
    
    
    }
    
    
    
    
    

    @IBOutlet weak var txtCategory: UITextField!
    
    @IBAction func btnSaveItem(sender: AnyObject) {
       
  
        let formatter = NSNumberFormatter()
        
        formatter.generatesDecimalNumbers = true
        
        
        let purchasePrice = formatter.numberFromString(txtPurchasePrice.text!) as! NSDecimalNumber

        Item.addItem(txtItemName.text!, selectedRoom: selectedRoom, selectedCategory: selectedCategory, purchaseDate: purchaseDate, purchasePrice: purchasePrice)
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    override func viewDidLoad() {
        
        let pickerView = UIPickerView()
        
        pickerView.delegate = self
        
        txtCategory.inputView = pickerView
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Category.getAllCategories().count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let thisCategory = Category.getAllCategories()[row] as! Category
        
        return thisCategory.catergory_name
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let thisCategory = Category.getAllCategories()[row] as! Category
        
        txtCategory.text = thisCategory.catergory_name
        
        selectedCategory = thisCategory
        
    }
    
}
    
