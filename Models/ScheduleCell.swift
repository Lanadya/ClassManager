//
//  ScheduleCell.swift
//  ClassManager
//
//  Created by Nina Klee on 03.12.24.
//

import Foundation

/// Repräsentiert eine Zelle im Stundenplan
struct ScheduleCell: Identifiable {
    /// Eindeutige ID für die Zelle
    let id = UUID()
    /// Enthält entweder eine Klasse oder ist `nil`, wenn die Zelle leer ist
    var classInfo: Class?
    /// optiinal Raum, Fach, Merker
    var room: String?
    var subject: String?
    var needsClassBookReminder: Bool
    
    
}
