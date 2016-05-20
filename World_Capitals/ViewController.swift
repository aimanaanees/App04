//
//  ViewController.swift
//  World_Capitals
//
//  Created by Aiman Abdullah Anees on 19/05/16.
//  Copyright © 2016 Aiman Abdullah Anees. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate {

    @IBOutlet var Image1: UIImageView!
    
    @IBOutlet var Image2: UIImageView!
    
    
    @IBOutlet var Message1: UILabel!
    
    @IBOutlet var Message2: UILabel!
    
    @IBOutlet var Message3: UILabel!
    
    var data = [["USA","Italy","China","England"],["Beijing","Washington DC","Rome","London"]]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return data.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return data[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return data[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        var item1 = data[0][pickerView.selectedRowInComponent(0)]
        var item2 = data[1][pickerView.selectedRowInComponent(1)]
        
        var usa = UIImage(named: "usa.jpg")
        var italy = UIImage(named: "italy.jpg")
        var england = UIImage(named: "england.jpg")
        var china = UIImage(named: "china.jpg")
        var washington = UIImage(named: "washington.jpg")
        var rome = UIImage(named: "rome.jpg")
        var beijing = UIImage(named: "beijing.jpg")
        var london = UIImage(named: "london.jpg")
        
        var CorrectMess = "Capital of \(item1) is \(item2)"
        var Mess = "Match The Flags To The Capitals."
        
        
        switch(item1)
        {
            case "USA":
            Image1.image = usa
            Message1.text = "USA"
            
            
            case "Italy":
            Image1.image = italy
            Message1.text = "Italy"
            
            case "China":
            Image1.image = china
            Message1.text = "China"
            
            case "England":
            Image1.image = england
            Message1.text = "England"
            
        default:
            Image1.image = usa
            Message1.text = "USA"
            
        }
        
        switch(item2)
        {
            case "Beijing":
            Image2.image = beijing
            Message2.text = "Beijing"
            
            if(Message1.text == "China")
            {
                Message3.text = CorrectMess
                
            }
            else
            {
                Message3.text = Mess
            }
            
            case "Washington DC":
            Image2.image = washington
            Message2.text = "Washington DC"
            
            if(Message1.text == "USA")
            {
                Message3.text = CorrectMess
            }
            else{
                Message3.text = Mess
            }
            
            
            case "Rome":
            Image2.image = rome
            Message2.text = "Rome"
            
            if(Message1.text == "Italy")
            {
                Message3.text = CorrectMess
            }
            else
            {
                Message3.text = Mess
            }
            
            case "London":
            Image2.image = london
            Message2.text = "London"
            
            if(Message1.text == "England")
            {
                Message3.text = CorrectMess
            }
            else{
                Message3.text = Mess
            }
            
        default:
            Image2.image = washington
            Message2.text = "Washington DC"
            
            
            
        }
        
        
    }
    
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

