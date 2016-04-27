//
//  ViewController.swift
//  DemoDropDown
//
//  Created by Rahul Morade on 27/04/16.
//  Copyright © 2016 Rahul Morade. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var textV: UITextField!
    var DataArray:NSMutableArray=["First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eight"]

    @IBOutlet weak var output: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        let dropdown = DropDown.init(framea: CGRectMake(textV.frame.origin.x, textV.frame.origin.y, textV.frame.width, 200), SetArray: DataArray)
        self.view.addSubview(dropdown)
        return false;
    }
}

