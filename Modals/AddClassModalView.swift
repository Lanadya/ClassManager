import SwiftUI

struct AddClassModalView: View {
    @Binding var scheduleCell: ScheduleCell
    @Environment(\.dismiss) var dismiss // Modernere Methode zum Schließen des Modals

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
                        dismiss() // Modernisiert
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
                        dismiss()
                    }
                    .disabled(classInfo.isEmpty)
                }
            }
        }
    }
}
