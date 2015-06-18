//
//  Atividade.swift
//  DataProva
//
//  Created by Guilherme Bayma on 6/5/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

import Foundation
import CoreData

@objc(Atividade)
class Atividade: NSManagedObject {

    @NSManaged var nome: String
    @NSManaged var tipo: NSNumber
    @NSManaged var data: NSDate
    @NSManaged var nota: NSNumber
    @NSManaged var disciplina: Disciplina

}
