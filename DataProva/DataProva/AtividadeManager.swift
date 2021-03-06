//
//  AtividadeManager.swift
//  DataProva
//
//  Created by Guilherme Bayma on 6/5/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

import CoreData
import UIKit

public class AtividadeManager {
    static let sharedInstance = AtividadeManager()
    static let entityName = "Atividade"
    lazy var managedContext:NSManagedObjectContext = {
        var appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var c = appDelegate.managedObjectContext
        return c!
        }()
    
    private init(){}
    
    func novaAtividade() -> Atividade {
        return NSEntityDescription.insertNewObjectForEntityForName(AtividadeManager.entityName, inManagedObjectContext: managedContext) as! Atividade
    }
    
    func salvar() {
        var error:NSError?
        managedContext.save(&error)
        
        if let e = error {
            println("Could not save. Error: \(error), \(error!.userInfo)")
        }
    }
    
    func buscarAtividades() -> [Atividade] {
        let fetchRequest = NSFetchRequest(entityName: AtividadeManager.entityName)
        var error:NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as? [NSManagedObject]
        
        if let results = fetchedResults as? [Atividade] {
            return results
        } else {
            println("Could not fetch. Error: \(error), \(error!.userInfo)")
        }
        
        NSFetchRequest(entityName: "FetchRequest")
        
        return [Atividade]()
    }
}
