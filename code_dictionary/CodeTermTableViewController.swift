//
//  CodeTermTableViewController.swift
//  code_dictionary
//
//  Created by João Henrique Camargo on 22/04/21.
//

import UIKit

class CodeTermTableViewController: UITableViewController {
    
    var terms = ["Boolean", "Int", "Double", "String", "Array"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return terms.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = terms[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedTerm = terms[indexPath.row]
        
        performSegue(withIdentifier: "goToDefinition", sender: selectedTerm)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let termVC = segue.destination as! DefinitionViewController
        
        let selectedTerm = sender as! String
        
        termVC.term = selectedTerm
    }
}
