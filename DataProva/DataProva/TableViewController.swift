//
//  TableViewController.swift
//  DataProva
//
//  Created by Guilherme Bayma on 6/5/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UITableViewDataSource {
    
    lazy var disciplinas = {
        return DisciplinaManager.sharedInstance.buscarDisciplinas()
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Disciplinas"
    }
    
    override func viewWillAppear(animated: Bool) {
        disciplinas = DisciplinaManager.sharedInstance.buscarDisciplinas()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disciplinas.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = disciplinas[indexPath.row]
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("ceulaDisciplina") as! UITableViewCell
        
        cell.textLabel?.text = item.nome
        cell.detailTextLabel?.text = "Semestre: \(item.semestre)"
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destino = segue.destinationViewController as? ViewController {
            
        }
    }

    @IBAction func addDisciplina(sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "Nova Disciplina",
            message: "Adicione uma nova disciplina",
            preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Salvar",
            style: .Default) { (action: UIAlertAction!) -> Void in
                
                let textField = alert.textFields![0] as! UITextField
                var novaDisc = DisciplinaManager.sharedInstance.novaDisciplina()
                novaDisc.nome = textField.text
                DisciplinaManager.sharedInstance.salvar()
                self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Default) { (action: UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
    }
}
