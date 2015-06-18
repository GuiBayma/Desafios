//
//  Disciplina.swift
//  DataProva
//
//  Created by Guilherme Bayma on 6/5/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

import Foundation
import CoreData

@objc(Disciplina)
class Disciplina: NSManagedObject {

    @NSManaged var nome: String
    @NSManaged var semestre: NSNumber
    @NSManaged var atividades: NSSet

    func addAtividade(atividade : Atividade) {
        var atividades = self.mutableSetValueForKey("atividades")
        atividades.addObject(atividade)
    }
}
