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
    
    
    @IBOutlet weak var txtItemName: UITextField!
    
    @IBOutlet weak var txtSerialNumber: UITextField!
    
    @IBOutlet weak var txtPurchasePrice: UITextField!
    
    @IBOutlet weak var txtPurchaseDate: UITextField!
    
    @IBOutlet weak var txtCategory: UITextField!
    
    @IBAction func btnSaveItem(sender: AnyObject) {
        Item.addItem(txtItemName.text!, selectedRoom: selectedRoom, selectedCategory: selectedCategory)
        Item.addItem(txtSerialNumber.text!)
        Item.addItem(txtPurchaseDate.text!)
        Item.addItem(txtPurchasePrice.text!)
        
        
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
    
