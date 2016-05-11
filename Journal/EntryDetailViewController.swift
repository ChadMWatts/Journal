//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {

    var entry: Entry?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let entry = entry {
            
            updateWithEntry(entry)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithEntry(entry: Entry) {
        
        self.entry = entry
        
        self.titleTextField.text = entry.title
        self.bodyTextField.text = entry.bodyText
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
//        guard let entry = entry, let title = titleTextField.text, let body = bodyTextField.text where title.character.character.count > 0 && body.character.count > 0 else { return }
        
        if let entry = self.entry {
            entry.title = self.titleTextField.text!
            entry.bodyText = self.bodyTextField.text
            entry.timeStamp = NSDate()
        } else {
            let newEntry = Entry(title: self.titleTextField.text!, bodyText: self.bodyTextField.text!)
            EntryController.sharedController.addEntry(newEntry)
            self.entry = newEntry
        }
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        
        titleTextField.text = ""
        bodyTextField.text = "Journal Here"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
