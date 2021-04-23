//
//  DefinitionViewController.swift
//  code_dictionary
//
//  Created by João Henrique Camargo on 22/04/21.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    var term = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        title = term
        
        if term == "Boolean" {
            definitionLabel.text = "This is a boolean hehehe"
        } else if term == "Int" {
            definitionLabel.text = "This is a Int hehehe"
        } else if term == "Double" {
            definitionLabel.text = "This is a Double hehehe"
        } else if term == "String" {
            definitionLabel.text = "This is a String hehehe"
        } else if term == "Array" {
            definitionLabel.text = "This is a Array hehehe"
        }
    }

}
