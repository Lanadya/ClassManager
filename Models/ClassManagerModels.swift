//
//  ClassManagerModels.swift
//  ClassManager
//
//  Created by Nina Klee on 03.12.24.
//

import Foundation

/// Repräsentiert eine Klasse in der App
struct Class {
    /// Eindeutige ID für die Klasse
    let id: UUID
    /// Name der Klasse (z. B. "10A")
    var name: String
    /// Fach der Klasse (optional)
    var subject: String?
    /// Raum der Klasse (optional)
    var room: String?
    /// Gibt an, ob ein Hinweis für das Klassenbuch benötigt wird
    var needsClassBookReminder: Bool
    /// Liste der Schüler in der Klasse
    var students: [Student]
    
    /// Initialisierung
    init(name: String, subject: String? = nil, room: String? = nil, needsClassBookReminder: Bool = true, students: [Student] = []) {
        self.id = UUID()
        self.name = name
        self.subject = subject
        self.room = room
        self.needsClassBookReminder = needsClassBookReminder
        self.students = students
    }
}

/// Repräsentiert einen Schüler in der App
struct Student {
    /// Eindeutige ID für den Schüler
    let id: UUID
    /// Vorname des Schülers
    var firstName: String
    /// Nachname des Schülers
    var lastName: String
    /// Wunschname des Schülers (optional)
    var preferredName: String?
    /// Phonetische Aussprache des Namens (optional)
    var phonetics: String?
    
    /// Initialisierung
    init(firstName: String, lastName: String, preferredName: String? = nil, phonetics: String? = nil) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.preferredName = preferredName
        self.phonetics = phonetics
    }
}


