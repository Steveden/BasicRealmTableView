//
//  CarsDB.swift
//  BasicRealmTableView
//
//  Created by Steve Smith on 2022-10-10.
//

import Foundation
import RealmSwift

class CarsDB: Object {
    @objc dynamic var car: String = ""
    @objc dynamic var name: String = ""
    }
