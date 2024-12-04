//
//  AddClassView.swift
//  ClassManager
//
//  Created by Nina Klee on 03.12.24.
//

import SwiftUI

struct AddClassView: View {
    @Binding var scheduleCell: ScheduleCell
    @Environment(\.presentationMode) private var presentationMode

    @State private var classInfo = ""
    @State private var subject = ""
    @State private var room = ""
    @State private var needsClassBookReminder = true

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Klassendetails")) {
                    TextField("Klassenname", text: $classInfo)
                    TextField("Fach", text: $subject)
                    TextField("Raum", text: $room)
                    Toggle("Klassenbuch mitbringen", isOn: $needsClassBookReminder)
                }
            }
            .navigationTitle("Neue Klasse")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Abbrechen") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Speichern") {
                        let newClass = Class(
                            name: classInfo,
                            subject: subject.isEmpty ? nil : subject,
                            room: room.isEmpty ? nil : room,
                            needsClassBookReminder: needsClassBookReminder
                        )
                        scheduleCell.classInfo = newClass
                        presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(classInfo.isEmpty)
                }
            }
        }
    }
}
