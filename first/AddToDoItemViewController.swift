//
//  AddToDoViewController.swift
//  first
//
//  Created by jiyun xu on 10/18/14.
//  Copyright (c) 2014 jiyun xu. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    var todoItem = ToDoItem()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if sender as? UIBarButtonItem != doneButton {
            return
        }

        if textField.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding ) != 0 {
            self.todoItem.itemName = textField.text
            self.todoItem.completed = false
        }
    }

}
